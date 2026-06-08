# Secure a New AWS Account for a Startup

## Business Scenario
Hi Terence — here's the account security work you asked for, plus a gap I found and fixed.

## What You Asked For
When I reviewed your account:
- **Good news:** your root account (the master login) already had MFA turned on — meaning a password alone can't get in.
- **The gap:** the only other login was a service account (`frontend-deploy`) used to publish your website. There was no proper day-to-day admin login, which meant daily work was happening through the root account — something AWS specifically warns against, because the root account can do anything, including close the account.

So I fixed it:
- Created a dedicated admin login (`sydney_admin`) for everyday work.
- Turned on MFA for it (you have to enter a second passcode for verification).
- Moved daily use to that login, and locked the root account away for emergencies only.

## The AWS Services I Used (plain English)
- **Root user**: your master account. Unlimited power, so it should be protected and rarely used.
- **IAM**: lets me create separate logins with only the access each one needs.
- **MFA**: a second login step (a phone code) so a stolen password isn't enough.

## Why This Matters To You
Think of the root account as the master key to your building. You don't carry the master key every day — you use a regular key (the admin login) and lock the master one in a drawer. If a daily login is ever compromised, the damage is limited and you still have the master key to fix things.

## Proof It Works
| Screenshot | What it shows you |
|---|---|
| screenshots/root-mfa-enabled.png | MFA is active on your root account |
| screenshots/admin-user.png | Your new dedicated admin login, with console access and MFA enabled |

## Security Notes
See [iam-access-notes.md](iam-access-notes.md).

## What This Costs You
Nothing — no paid resources were created. See [cleanup.md](cleanup.md).

## Concepts Demonstrated
See [concepts-demonstrated.md](concepts-demonstrated.md).
