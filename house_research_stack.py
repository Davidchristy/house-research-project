from distutils.command.config import config
from aws_cdk import (
    # Duration,
    Duration,
    Stack,
    aws_ses_actions as ses_actions,
    aws_ses as ses,
    aws_s3 as s3,
    aws_s3_notifications as s3_notify,
    aws_lambda as _lambda,
    aws_lambda_event_sources as lambda_event_sources
)
import json
from constructs import Construct

class HouseResearchStack(Stack):

    def __init__(self, scope: Construct, construct_id: str, **kwargs) -> None:
        super().__init__(scope, construct_id, **kwargs)

        with open('config.json') as json_file:
            self.config = json.load(json_file)



        # make bucket for incoming emails
        self.create_email_s3_bucket()
        
        # Create lambda function to process incoming emails
        self.create_email_scanner_lambda()
        
        # Create ses rule
        self.create_ses_rule()

    def create_email_scanner_lambda(self):
        self.email_scanner_lambda = _lambda.Function(self, 'house-research-email-scanner',
                        function_name="house-research-email-scanner", 
                        runtime=_lambda.Runtime.PYTHON_3_8,
                        handler='lambda_function.lambda_handler',
                        code=_lambda.Code.from_asset('houseSearchEmailScanner'),
                        environment={}
                    )
        self.email_scanner_lambda.add_event_source(
                lambda_event_sources.S3EventSource(self.email_bucket,
                    events=[s3.EventType.OBJECT_CREATED],
                    filters=[s3.NotificationKeyFilter(prefix="emails/")]
                )
            )



    def create_email_s3_bucket(self):
        self.email_bucket = s3.Bucket(self, 
                                    "house-research-emails",
                                    bucket_name="house-research-emails",
                                    block_public_access=s3.BlockPublicAccess.BLOCK_ALL,
                                    lifecycle_rules=[
                                        s3.LifecycleRule(expiration=Duration.days(30))
                                    ]

                                )



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
