# Welcome to the House Research Project
This is a simple project that I'm using to gain experience in AWS while at the same time looking for my next house to purchase. 

The general workflow will be:

1. Emails from my realtor will be coming in to an address 
2. These emails will be saved in S3 and parsed saving data into Dynamo table
3. Using either SNS or Event Bridge, I will set up qualifcations for human review on a house
4. Set up a number of Lambdas to get "best" house based on custom ranking TBD

## Interested in playing around with this?
If you want to mess with the code yourself you can download this and run the `cdk deploy` command if you have a default aws profile set up on your local computer. Using vscode's devcontainers the coding enviroment will be set up for you except for the aws connection.  

## Useful commands

 * `cdk ls`          list all stacks in the app
 * `cdk synth`       emits the synthesized CloudFormation template
 * `cdk deploy`      deploy this stack to your default AWS account/region
 * `cdk diff`        compare deployed stack with current state
 * `cdk docs`        open CDK documentation

Enjoy!
