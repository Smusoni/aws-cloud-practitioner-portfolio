# Set Up Billing Alerts for a Small Business

Hi Terence — here's the billing protection you asked for.

## What You Asked For
You wanted to start using AWS without the risk of a surprise bill. Before any cloud project goes live, you need spending to be visible and capped by an alert — so you find out about a charge in real time, not at the end of the month.

## What I Built For You
I set up a monthly spending budget on your AWS account with an email alert. The moment your spending crosses the threshold, you get an email — giving you time to react before it becomes a real bill.

This wasn't just theory. When I went into the account, it was already quietly costing about $28/month from a leftover website (WAF, EC2, and VPC charges), with limited credit left. I found it, shut down the unnecessary parts, and put this budget alert in place so it can't happen silently again.

## The AWS Services I Used (plain English)
- **AWS Budgets**: lets you set a monthly spending limit and emails you the moment you cross it.
- **Billing Dashboard**: your home base for current charges, credits, and Free Tier usage.
- **Cost Explorer**: shows you exactly which services are costing money, by month.

## How It Works
```mermaid
flowchart LR
  AWS[Your AWS Services] --> Billing[Billing & Cost Management]
  Billing --> Budget[Monthly Budget Limit]
  Budget -->|limit crossed| Email[Email Alert to You]
```

## Proof It Works
| Screenshot | What it shows you |
|---|---|
| screenshots/aws-budget.png | Your monthly budget and email alert, configured and active |

## What This Costs You
Nothing. Your first two budgets are free, and the billing tools are free to use. See [cost-notes.md](cost-notes.md).

## Maintenance / Cleanup
Nothing to remove — this budget should stay on permanently. It's your safety net. See [cleanup.md](cleanup.md).

## Concepts Demonstrated
See [concepts-demonstrated.md](concepts-demonstrated.md).
