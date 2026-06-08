# reframe-to-client-voice.ps1
# Run from inside the repo root: C:\Users\sydny\aws-cloud-practitioner-portfolio
# It rewrites the root README, renames exam-mapping.md -> concepts-demonstrated.md
# for projects 1, 2, 9, and writes the new client-voice content.

$ErrorActionPreference = "Stop"

# --- Safety check: make sure we're in the repo root ---
if (-not (Test-Path ".\projects")) {
    Write-Host "ERROR: Run this from inside the repo root (the folder that contains 'projects')." -ForegroundColor Red
    exit 1
}

# ---------- ROOT README ----------
$rootReadme = @'
# AWS Cloud Solutions — Client Portfolio

A collection of real AWS solutions built for small businesses and individuals. Each project starts with a client's problem and ends with a working, documented deliverable: what was built, why it fits their needs, how it's secured, what it costs them, and how to maintain it.

## How Each Project Is Organized

Every project folder contains:

| File | What it covers |
|---|---|
| `README.md` | The client's need and the solution delivered |
| `screenshots/` | Proof the solution works |
| `concepts-demonstrated.md` | The AWS skills and services applied |
| `cost-notes.md` | What the solution costs the client |
| `cleanup.md` | How to shut it down or maintain it |

## Areas of Work

| Focus | What it covers |
|---|---|
| Account Security | IAM, MFA, least privilege, protecting credentials |
| Cost Management | Budgets, alerts, cost visibility, optimization |
| Compute | EC2, Lambda, serverless functions |
| Storage | S3, private/secure storage, storage selection |
| Databases | RDS, DynamoDB |
| Networking | VPC, subnets, security groups |
| Application Integration | SNS, SQS, API Gateway |
| Monitoring | CloudWatch metrics, alarms, logs |

## Project Index

| # | Client Solution | Status |
|---|---|---|
| 1 | [Secure a New AWS Account](projects/01-account-security-startup/) | OK Complete |
| 2 | [Set Up Billing Alerts](projects/02-billing-alerts-small-business/) | OK Complete |
| 3 | [Host a Coffee Brand Landing Page on S3](projects/03-s3-coffee-landing-page/) | TODO Not started |
| 4 | [Private Document Storage for a Law Office](projects/04-private-document-bucket-law-office/) | TODO Not started |
| 5 | [Cloud Server for a Freelance Developer](projects/05-ec2-linux-server-devbox/) | TODO Not started |
| 6 | [Small Business Website on EC2](projects/06-ec2-barber-shop-website/) | TODO Not started |
| 7 | [Cloud Network for a Delivery App](projects/07-vpc-delivery-app-network/) | TODO Not started |
| 8 | [Customer Database for a Gym](projects/08-rds-gym-member-database/) | TODO Not started |
| 9 | [Homework Tracker Database](projects/09-dynamodb-homework-database/) | OK Complete |
| 10 | [Serverless Order Function for a Pizza Shop](projects/10-lambda-pizza-order-function/) | WIP In progress |
| 11 | [API for a Food Truck Menu](projects/11-api-gateway-food-truck-menu/) | TODO Not started |
| 12 | [Appointment Reminders with SNS](projects/12-sns-dental-appointment-reminders/) | TODO Not started |
| 13 | [Order Processing Queue with SQS](projects/13-sqs-tshirt-order-queue/) | TODO Not started |
| 14 | [Website Monitoring with CloudWatch](projects/14-cloudwatch-website-monitoring/) | TODO Not started |
| 15 | [Disaster Recovery Plan for an Online Store](projects/15-online-store-disaster-recovery-plan/) | TODO Not started |
| 16 | [Full Homework Tracker App](projects/16-homework-tracker-serverless-app/) | TODO Not started |
| 17 | [Monthly AWS Cost Report for a Nonprofit](projects/17-nonprofit-monthly-cost-report/) | TODO Not started |
| 18 | [IAM Permissions Lab for a School](projects/18-school-iam-permissions-lab/) | TODO Not started |
| 19 | [Storage Recommendations for Clients](projects/19-client-storage-recommendations/) | TODO Not started |
| 20 | [Portfolio Summary](projects/20-aws-beginner-portfolio/) | TODO Not started |
| 21 | [Shared Responsibility Board for a Clinic](projects/21-clinic-shared-responsibility-board/) | TODO Not started |
| 22 | [AWS Pricing Quote for a Coffee Shop](projects/22-coffee-shop-aws-pricing-quote/) | TODO Not started |
| 23 | [AWS Support Plan Recommendations](projects/23-support-plan-recommendations/) | TODO Not started |
| 24 | [Multi-Account Setup for a Growing Company](projects/24-growing-company-aws-organization/) | TODO Not started |
| 25 | [Compliance Evidence with AWS Artifact](projects/25-artifact-compliance-evidence/) | TODO Not started |

**Status legend:** TODO Not started - WIP In progress - OK Complete

## What "Done" Means

A solution isn't done when the AWS resource exists. It's done when the folder proves: what was built, why it fits the client's need, how it works, how it's secured, what it costs, and how to maintain or shut it down.
'@
Set-Content -Path ".\README.md" -Value $rootReadme -Encoding UTF8
Write-Host "Wrote root README.md" -ForegroundColor Green

# ---------- helper to replace emoji status (PowerShell here-strings dislike emoji) ----------
# We wrote placeholder words above; now swap them for the real emoji.
(Get-Content ".\README.md" -Raw) `
    -replace 'OK Complete', "$([char]0x2705) Complete" `
    -replace 'WIP In progress', "$([char]0x1F7E1) In progress" `
    -replace 'TODO Not started', "$([char]0x1F532) Not started" `
    -replace 'TODO Not started - WIP In progress - OK Complete', "$([char]0x1F532) Not started - $([char]0x1F7E1) In progress - $([char]0x2705) Complete" `
    | Set-Content ".\README.md" -Encoding UTF8
Write-Host "Applied status icons to root README.md" -ForegroundColor Green

# ---------- PROJECT 1 ----------
$p1 = ".\projects\01-account-security-startup"
if (Test-Path "$p1\exam-mapping.md") { Remove-Item "$p1\exam-mapping.md" }
$p1concepts = @'
# Concepts Demonstrated — Secure a New AWS Account

| Skill / Service | How it was applied |
|---|---|
| Root user vs IAM user | Identified root being used for daily work and moved it to a dedicated admin login |
| MFA | Verified MFA on the root account and enabled it on the new admin login |
| Least privilege | Kept the deploy account limited; created a separate admin identity instead of overloading one login |
| IAM users and groups | Created an admin user through an Admins group with AdministratorAccess |
| Shared responsibility | Secured account access and credentials — the customer's responsibility in AWS |
'@
Set-Content -Path "$p1\concepts-demonstrated.md" -Value $p1concepts -Encoding UTF8
Write-Host "Project 1: wrote concepts-demonstrated.md" -ForegroundColor Green

# ---------- PROJECT 2 ----------
$p2 = ".\projects\02-billing-alerts-small-business"
if (Test-Path "$p2\exam-mapping.md") { Remove-Item "$p2\exam-mapping.md" }
$p2concepts = @'
# Concepts Demonstrated — Billing Alerts

| Skill / Service | How it was applied |
|---|---|
| AWS Budgets | Created a monthly cost budget with an email alert |
| Cost Explorer | Used it to identify which services and regions were generating charges |
| Cost visibility | Investigated and stopped ~$28/month of unnecessary spend (WAF, EC2, VPC) |
| Pay-as-you-go awareness | Set guardrails because AWS charges accrue continuously with no upfront cap |
| Free Tier awareness | Documented which usage stays free vs. billed |
'@
Set-Content -Path "$p2\concepts-demonstrated.md" -Value $p2concepts -Encoding UTF8
Write-Host "Project 2: wrote concepts-demonstrated.md" -ForegroundColor Green

# ---------- PROJECT 9 ----------
$p9 = ".\projects\09-dynamodb-homework-database"
if (Test-Path "$p9\exam-mapping.md") { Remove-Item "$p9\exam-mapping.md" }
$p9concepts = @'
# Concepts Demonstrated — Homework Tracker Database

| Skill / Service | How it was applied |
|---|---|
| Amazon DynamoDB | Created a NoSQL table and stored real records |
| NoSQL data modeling | Designed items with a partition key for fast lookups |
| Serverless databases | Delivered a database with no servers to manage |
| Scalability | Chose a service that scales automatically as data grows |
| Service selection | Chose DynamoDB over a relational database for simple, fast, low-maintenance needs |
'@
Set-Content -Path "$p9\concepts-demonstrated.md" -Value $p9concepts -Encoding UTF8
Write-Host "Project 9: wrote concepts-demonstrated.md" -ForegroundColor Green

# ---------- update README links in projects 1, 2, 9 ----------
foreach ($p in @($p1, $p2, $p9)) {
    $readmePath = "$p\README.md"
    if (Test-Path $readmePath) {
        (Get-Content $readmePath -Raw) `
            -replace '\[exam-mapping\.md\]\(exam-mapping\.md\)', '[concepts-demonstrated.md](concepts-demonstrated.md)' `
            -replace '## Cloud Practitioner Concepts.*', '## Concepts Demonstrated' `
            -replace '## Exam Mapping', '## Concepts Demonstrated' `
            | Set-Content $readmePath -Encoding UTF8
        Write-Host "Updated README link in $p" -ForegroundColor Green
    }
}

Write-Host ""
Write-Host "Done. Review the changes, then commit:" -ForegroundColor Cyan
Write-Host "  git add ."
Write-Host "  git commit -m `"Reframe portfolio to client-deliverable voice`""
Write-Host "  git push"
