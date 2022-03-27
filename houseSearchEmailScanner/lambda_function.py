import json
import boto3

def lambda_handler(event, context):
    # TODO implement
    print(event)
    record = event["Records"][0]
    s3 = record["s3"]
    bucket = s3["bucket"]["name"]
    key = s3["object"]["key"]
    s3 = boto3.client('s3')
    print(f"bucket: {bucket}")
    print(f"key: {key}")
    response = s3.get_object(Bucket=bucket, Key=key)
    emailcontent = response['Body'].read().decode('utf-8')
    
    print(emailcontent)


    print(context)
    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }
