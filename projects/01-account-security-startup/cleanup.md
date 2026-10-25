# Cleanup — Secure a New AWS Account for a Startup


## What must be deleted or disabled to stop charges

Nothing. This project created no paid resources — it changed account
security settings only:

- [x] Root account: MFA verified on, then locked away for emergencies only
- [x] New dedicated admin login (`sydney_admin`) created through an Admins
      group, with MFA enabled — daily work moved to this login
- [x] Existing deploy login (`frontend-deploy`) left in place, kept limited
      to publishing the website

There is nothing to tear down. The security settings are the deliverable
and stay in place permanently; removing them would undo the project.


## Cleanup performed on

Date: Not applicable — no resources were created, so no teardown was
needed. The account guardrail this project supports (a monthly budget
alert) is recorded as set in the repo's cost-and-cleanup log.


## Verification

> Confirmed in the IAM console (see screenshots): MFA is active on the
> root account, and the new admin login exists with console access and
> MFA enabled. Because IAM users, groups, and MFA carry no charge, there
> is nothing left billing from this project — the project README states
> the same: no paid resources were created.
