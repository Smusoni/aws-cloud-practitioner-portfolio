# Exam Mapping — Secure a New AWS Account for a Startup

CLF-C02 concepts proven by this project:

| Concept | Domain | How this project proves it |

|Root user vs IAM user| Security & Compliance | Identified root being used for daily work and moved it to a dedicated IAM admin user|

|MFA| Securtiy & Compliance | Verified MFA on root and enabled MFA on the new admin user

|Least Priviliege| Securtiy & Compliance| Recognized the deploy accoun should stay limitied: created a separate admin identity

Shared responsibilty model| Security & Compliance| Securing account access and credentails is the customer's responsiblity, not AWS's
