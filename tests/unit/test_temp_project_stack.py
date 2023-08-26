import aws_cdk as core
import aws_cdk.assertions as assertions

from infrastructure.house_research_stack import HouseResearchProject

# example tests. To run these tests, uncomment this file along with the example
# resource in temp_project/temp_project_stack.py
def test_sqs_queue_created():
    app = core.App()
    stack = HouseResearchProject(app, "temp-project")
    template = assertions.Template.from_stack(stack)

#     template.has_resource_properties("AWS::SQS::Queue", {
#         "VisibilityTimeout": 300
#     })
