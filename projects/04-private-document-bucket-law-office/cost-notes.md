# Cost Notes — Create a Private Document Storage Bucket for a Law Office

## Expected Cost
> TODO: What would this cost per month at small scale?# Cost Notes - Private Document Storage Bucket

Amazon S3 is incredibly cost-effective for document storage. For standard law office file volumes, this architecture will practically cost $0.00 per month under the AWS Free Tier.

## AWS Free Tier Eligibility
* **Storage Limit:** The AWS Free Tier includes 5 GB of Amazon S3 Standard storage per month for the first 12 months.
* **Request Limits:** Includes 2,000 PUT requests (uploading files) and 20,000 GET requests (viewing/downloading files) per month.

## Ongoing Estimated Costs (Post-Free Tier)
If storage requirements expand beyond the Free Tier limits, S3 Standard pricing is roughly $0.023 per GB per month (depending on the AWS Region used). 
* Data transfer *into* S3 from the internet is completely free.
* Data encryption via SSE-S3 is included at no additional cost, as AWS manages the key infrastructure automatically.
## Free Tier Assumptions
> TODO: Which parts are Free Tier eligible and what are the limits?

## Cost Controls
> TODO: Budgets, alerts, teardown timing, sizing choices.
