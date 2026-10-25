# Cleanup — Set Up Billing Alerts for a Small Business


## What must be deleted or disabled to stop charges

Nothing from this project itself — the budget alert is a free guardrail
and, per the project README, it should stay on permanently as the
account's safety net.

The real cleanup connected to this project was the leftover spend it
uncovered, recorded in the repo's cost-and-cleanup log (~$28/month from a
previously deployed website):

- [x] WAF Web ACL (~$5–10/mo): rules documented, disassociated, deleted
- [x] EC2 instance: stopped (not terminated) — the project is preserved
      on its EBS volume
- [x] Elastic IP / VPC extras: reviewed and released/removed as needed
- [x] Budget alert created as a tripwire for future charges


## Cleanup performed on

Date: Not recorded in the repo — the actions above are documented in the
repo's cost-and-cleanup log, which tracks the incident and the guardrails
that came out of it.


## Verification

> The charges were traced through Cost Explorer and the Bills page — the
> same tools this project sets up. One lesson is written into the log:
> resources are region-scoped, and the leftover EC2 instance only became
> visible after switching to the correct region (found via the Bills page
> and EC2 Global View). A WAF also can't be deleted while still
> associated — it has to be disassociated first.
