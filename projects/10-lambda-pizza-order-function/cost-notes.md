# Cost Notes — Create a Serverless Function for a Pizza Shop


## Expected Cost

Effectively nothing at this volume. The function runs only when it is
triggered and you pay only for the milliseconds it runs — there is no
server sitting idle. As the project README puts it, Lambda includes a
generous always-free tier (the food-truck API project in this portfolio
notes the figure the same way: 1 million free requests per month,
always).


## Free Tier Assumptions

The function's test traffic — sample order events run by hand — stays
far inside Lambda's always-free allowance, and CloudWatch Logs usage at
this scale is a handful of test executions.


## Cost Controls

- Pay-per-use by design: no trigger, no run, no charge.
- No infrastructure to leave running — the classic leftover-resource
  mistake (see Project 2's ~$28/month incident) doesn't apply to a
  function that only exists when invoked.
- Executions are visible in CloudWatch Logs, so unexpected invocation
  volume would be spotted rather than silently billed.
