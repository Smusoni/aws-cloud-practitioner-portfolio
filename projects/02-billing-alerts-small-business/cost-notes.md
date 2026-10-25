# Cost Notes — Set Up Billing Alerts for a Small Business


## Expected Cost

Cost is $0. AWS gives you your first two budgets free, and Cost Explorer
and the Billing Dashboard are free to use.


## Free Tier Assumptions

None needed — billing tools don't use up any Free Tier limits.


## Cost Controls

This project is cost control: a monthly budget with an email alert, set
after investigating and stopping ~$28/month of unnecessary spend (WAF,
EC2, and VPC leftovers) in this same account. The alert exists so charges
can't build up silently again — AWS billing accrues continuously, with
no upfront cap.
