#!/usr/bin/env python3
import os

import aws_cdk as cdk
import boto3

from house_research_stack import HouseResearchStack

my_session = boto3.session.Session()
my_region = my_session.region_name


app = cdk.App()
HouseResearchStack(app, "HouseResearchStack",
    # For more information, see https://docs.aws.amazon.com/cdk/latest/guide/environments.html
    env=cdk.Environment(region=my_region),
    )

app.synth()
