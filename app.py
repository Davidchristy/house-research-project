#!/usr/bin/env python3
import os

import aws_cdk as cdk

from house_research_stack import HouseResearchStack


app = cdk.App()
HouseResearchStack(app, "HouseResearchStack",
    # For more information, see https://docs.aws.amazon.com/cdk/latest/guide/environments.html
    env=cdk.Environment(account=os.getenv('CDK_DEFAULT_ACCOUNT'), region=os.getenv('CDK_DEFAULT_REGION')),
    )

app.synth()
