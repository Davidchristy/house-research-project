from aws_cdk import (
    Duration,
    Stack,
    aws_ses_actions as ses_actions,
    aws_ses as ses,
    aws_s3 as s3,
    aws_iam as iam,
    aws_s3_notifications as s3_notify,
    aws_lambda as _lambda,
    aws_lambda_event_sources as lambda_event_sources,
    aws_dynamodb as dynamodb,
)
import json
import os
import subprocess
from constructs import Construct
import shutil


class HouseResearchStack(Stack):

    def __init__(self, scope: Construct, construct_id: str, **kwargs) -> None:
        super().__init__(scope, construct_id, **kwargs)

        with open('config.json') as json_file:
            self.config = json.load(json_file)

        self.create_house_data_table()


        # make bucket for incoming emails
        self.create_email_s3_bucket()

        # Make bucket to keep local cache of house reports, used mainly for debugging
        # But might make a producer/consumer design
        self.create_full_report_cache_bucket()
        
        # Create lambda function to process incoming emails
        self.create_email_scanner_lambda()
        
        # Create ses rule
        self.create_ses_rule()



    def create_house_data_table(self):
        self.house_data_table = dynamodb.Table(self, 
            "house-data-table",
            table_name="house-data",
            partition_key=dynamodb.Attribute(
                name="address", 
                type=dynamodb.AttributeType.STRING
            ),
            billing_mode=dynamodb.BillingMode.PAY_PER_REQUEST
        )
        self.house_data_table.node.default_child.override_logical_id("housedatatable")


    def create_email_scanner_lambda(self):


        lambda_role = iam.Role(self, "lambda-role",
            assumed_by=iam.ServicePrincipal("lambda.amazonaws.com"),
        )
        lambda_role.add_managed_policy(
            iam.ManagedPolicy.from_aws_managed_policy_name("service-role/AWSLambdaBasicExecutionRole")
        )

        lambda_role.add_to_policy(iam.PolicyStatement(
            actions=[
                "s3:*",
            ],
            resources=[
                f"{self.email_bucket.bucket_arn}*",
                f"{self.report_cache_bucket.bucket_arn}*"

            ]
        ))

        lambda_role.add_to_policy(iam.PolicyStatement(
            actions=[
                "dynamodb:PutItem",
                "dynamodb:GetItem"
            ],
            resources=[
                self.house_data_table.table_arn
            ]
        ))



        self.email_scanner_lambda = _lambda.Function(self, 'house-research-email-scanner',
            function_name="house-research-email-scanner", 
            runtime=_lambda.Runtime.PYTHON_3_8,
            handler='lambda_function.lambda_handler',
            code=_lambda.Code.from_asset('houseSearchEmailScanner'),
            environment={
                "houseDataTableArn": self.house_data_table.table_arn
            },
            layers=[self.create_dependencies_layer("house-research", "house-research-email-scanner")],
            role=lambda_role,
            timeout=Duration.seconds(30)
        )
        self.email_scanner_lambda.node.default_child.override_logical_id("houseresearchemailscanner")

        self.email_scanner_lambda.add_event_source(
                lambda_event_sources.S3EventSource(self.email_bucket,
                    events=[s3.EventType.OBJECT_CREATED],
                    filters=[s3.NotificationKeyFilter(prefix="emails/")]
                )
            )


    def create_full_report_cache_bucket(self):
        self.report_cache_bucket = s3.Bucket(self, 
            "house-full-report-cache",
            bucket_name="house-full-report-cache",
            block_public_access=s3.BlockPublicAccess.BLOCK_ALL,
            lifecycle_rules=[
                s3.LifecycleRule(expiration=Duration.days(7))
            ]
        )
        self.report_cache_bucket.node.default_child.override_logical_id("housefullreport")

    def create_email_s3_bucket(self):
        self.email_bucket = s3.Bucket(self, 
            "house-research-emails",
            bucket_name="house-research-emails",
            block_public_access=s3.BlockPublicAccess.BLOCK_ALL,
            lifecycle_rules=[
                s3.LifecycleRule(expiration=Duration.days(30))
            ]
        )
        self.email_bucket.node.default_child.override_logical_id("houseresearchemails")



    def create_ses_rule(self):
        ses.ReceiptRuleSet(self, "RuleSet",
            receipt_rule_set_name="house-research-rule",
            rules=[
                ses.ReceiptRuleOptions(
                    enabled=True,
                    receipt_rule_name="house-research-rule",
                    recipients=[self.config.get("ses_recipient_email")],
                    actions=[
                        ses_actions.S3(
                            bucket=self.email_bucket,
                            object_key_prefix="emails/"
                        )
                    ]
                )
            ]
        )

    def create_dependencies_layer(self, project_name, function_name: str) -> _lambda.LayerVersion:
        requirements_file = "houseSearchEmailScanner/requirements.txt"
        output_dir = ".lambda_dependencies/" + function_name
        
        # Install requirements for layer in the output_dir
        if not os.environ.get("SKIP_PIP"):
            # Note: Pip will create the output dir if it does not exist
            subprocess.check_call(
                f"pip install -r {requirements_file} -t {output_dir}/python".split()
            )
            shutil.make_archive(output_dir, 'zip', output_dir)
        print(output_dir+".zip")
        return _lambda.LayerVersion(
            self,
            project_name + "-" + function_name + "-dependencies",
            code=_lambda.Code.from_asset(output_dir+".zip")
        )

