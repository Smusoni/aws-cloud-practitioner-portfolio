# Concepts Demonstrated — Secure a New AWS Account

| Skill / Service | How it was applied |
|---|---|
| Root user vs IAM user | Identified root being used for daily work and moved it to a dedicated admin login |
| MFA | Verified MFA on the root account and enabled it on the new admin login |
| Least privilege | Kept the deploy account limited; created a separate admin identity instead of overloading one login |
| IAM users and groups | Created an admin user through an Admins group with AdministratorAccess |
| Shared responsibility | Secured account access and credentials — the customer's responsibility in AWS |
