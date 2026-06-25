# Cleanup & Takedown Guide

Hi Terence, if you ever need to entirely decommission this application to clean up your AWS account environment, here is the exact order of operations to safely tear it down:

1. **Remove the API Front Door**: Go to the API Gateway console, select the Homework Tracker API, and choose **Delete** to stop accepting outside web requests.
2. **Decommission the Functions**: Delete the four distinct AWS Lambda functions (`lambda_create_task`, `lambda_list_tasks`, `lambda_update_task`, and `lambda_delete_task`).
3. **Wipe the Database**: Navigate to the DynamoDB dashboard, select your homework data table, and click **Delete Table** to permanently remove the storage layer.
4. **Clear out logs**: Go to CloudWatch Logs and delete the log groups tied to the Lambda functions to clear out any remaining system footprints.
