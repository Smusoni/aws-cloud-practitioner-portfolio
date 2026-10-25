# Cost Notes — Secure a New AWS Account for a Startup


## Expected Cost

$0 per month. IAM users and groups, MFA, and the account settings changed
in this project are not billed services, and the project README confirms
no paid resources were created.


## Free Tier Assumptions

None needed — nothing in this project consumes Free Tier allowances,
because nothing billable was created.


## Cost Controls

- Daily work runs through an IAM admin login instead of the root account,
  so account activity is attributable to a named identity.
- The deploy login (`frontend-deploy`) stays limited to its one job
  (publishing the website) instead of being widened — least privilege is
  also cost hygiene: a limited login can't accidentally launch paid
  resources outside its scope.
- The account-level monthly budget alert (set in Project 2 and recorded
  in the repo's cost-and-cleanup log) is the tripwire if anything on the
  account ever does start billing.
