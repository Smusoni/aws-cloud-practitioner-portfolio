# Cost and Cleanup Log

Running record of every paid AWS resource created in this portfolio, what it cost, and proof it was torn down. Goal: keep total portfolio spend under the available credit with zero surprise charges.

## Account Guardrails

| Guardrail | Status | Notes |
|---|---|---|
| Monthly budget alert | ✅ Set | Alert configured in AWS Budgets |
| Free Tier usage tracked | 🟡 | Check Billing → Free Tier monthly |

## Pre-Portfolio Cleanup (real-world cost incident)

Before starting this portfolio, the account was burning ~$28/month from a previously deployed website. Investigated via Cost Explorer and the Bills page, then paused everything without deleting the project:

| Resource | Charge Source | Action Taken |
|---|---|---|
| WAF Web ACL | ~$5-10/mo (ACL + rules + requests) | Rules documented, disassociated, deleted |
| EC2 instance | Hourly compute | Stopped (not terminated) — project preserved on EBS |
| Elastic IP / VPC extras | Hourly when idle | Reviewed and released/removed as needed |
| Budget alert | — | Created as a tripwire for future charges |

**Lesson learned:** resources are region-scoped — the EC2 console showed nothing until switching to the correct region (found via the Bills page and EC2 Global View). WAF can't be deleted while associated with a resource; disassociate first via "Manage resources."

## Resource Log

| Date | Project | Resource Created | Est. Cost | Torn Down? | Verified How |
|---|---|---|---|---|---|
| | | | | | |
