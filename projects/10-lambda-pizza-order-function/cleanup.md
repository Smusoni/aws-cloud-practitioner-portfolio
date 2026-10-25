# Cleanup — Create a Serverless Function for a Pizza Shop


## What must be deleted or disabled to stop charges

- [ ] Delete the Lambda function `pizzaOrderConfirmation`
- [ ] Optional: delete the CloudWatch log group for the function
      (`/aws/lambda/pizzaOrderConfirmation`)

Lambda and CloudWatch Logs bill per use, so once the function is gone
nothing from this project can keep charging.


## Cleanup performed on

Date: TODO (delete after screenshots are saved)


## Verification

> After deleting, the function no longer appears in the Lambda console
> and no new log entries arrive in its CloudWatch log group. Both
> services bill per use only, so there are no ongoing charges to confirm
> in Cost Explorer.
