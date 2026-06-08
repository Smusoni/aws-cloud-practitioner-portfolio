# Create a Homework Tracker Database with DynamoDB

## Business Scenario
Hi Terence — here's the homework tracker database you asked for.
You wanted a simple way to keep track of homework — the subject, the assignment, when it's due, and whether it's done. It needs to be cheap, reliable, and not something that requires a tech team to maintain.

## AWS Services Used
- Amazon DynamoDB: A serverless NoSQL database. You create a table and store records ("items") without managing any server.
## NOSQL in Plain ENglish
A NoSQL database doesnt force every record into the same rigid columns like a spreadsheet. Each item can have its own attribures. DynamoDB is built for fast looksups by a unique key and scales automatically, which is why its popular for apps that need speed and simplicity.

## What I Built
> A DynamoDB table called 'HomeworkTracker' with a partition key of 'AssignmentID'. I added several homework items to prove it stores and reutens real data.

## Evidence
See the `screenshots/` folder.

| Screenshot | What it proves |

| screenshots/sample-items.png| Real homework items stored in the table|
| screenshots/dynamodb-table.png | Table created and active |

## Security Notes
>  Access is controlled through IAM - only my admin user can read/write the table. No public access.

## Cost Notes
See [cost-notes.md](cost-notes.md). On-demand mode + tiny data = effectively free/ Free Tier

## Cleanup
See [cleanup.md](cleanup.md).

## Exam Mapping
See [exam-mapping.md](exam-mapping.md).
