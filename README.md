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


# Details
## Notes on files
- Requirements.txt
    - This is a list of python libraries and versions that go into both the docker container, and the lambda function dependencies layer
    - Note: These will get broken up into two seperate files at some point, but for now it's easier to have both containers use the same libraries for testing.
- README.md
    - This file...
- house-research_stack.py
    - The file that contains the code generating the AWS [CDK stack](https://docs.aws.amazon.com/cdk/v2/guide/stacks.html). If you are interested in the "Infrastructure as Code" portion of this project, look there.
- config.json.template
    - This is the template file for `config.json` that holds all the values for your specific iteration of the project.
- cdk.json
    - Needed for cdk (cloud development kit) toolkit, gives information on what files to deploy with cdk and provides a space to send in context cdk can use when making the stack
- app.py 
    - this is the entry point for ckd, it doesn't do much on it's own and only provides a way of making the stack defined in `house-research_stack.py`

##AWS Setup
You'll need some AWS configuration in your env. If you use the docker container provided it will use your hosting systems default aws env `~/.aws/`.

By default we expect a profile named `developer` whose AWS enviroment you will load the stack into. Feel free to reach 
