# Cost Notes - Homework Tracker App

Hi Terence, here is a detailed look at why this application is so cost-effective for you and how it impacts your bottom line.

## Why it's $0.00 / month
AWS provides a massive, recurring Free Tier for serverless applications. Under typical daily usage for tracking assignments, your monthly costs will comfortably look like this:

* **AWS Lambda**: The first 1 Million requests per month are completely free. Since our code only runs for a fraction of a second when you click a button, we won't even scratch the surface of this limit.
* **Amazon DynamoDB**: Gives you 25 GB of free data storage and plenty of free database read/write capacity—more than enough to track thousands of homework tasks without a fee.
* **Amazon API Gateway**: The first 1 Million connection calls per month are entirely free for the first 12 months.
* **Amazon CloudWatch**: Includes 5 GB of free tracking and monitoring data storage so we can look at system logs for free.

## Budget Safeguards
To keep things completely safe for your business budget, I configured the database to use **On-Demand Capacity (Pay-Per-Request)**. This ensures AWS only charges a tiny fraction of a penny *per click* when someone is actively using the app, rather than charging you an ongoing hourly fee while you sleep.
