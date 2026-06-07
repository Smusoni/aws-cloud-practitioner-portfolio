# AWS Cloud Practitioner Portfolio

A hands-on portfolio of 25 real-world AWS projects built while preparing for the **AWS Certified Cloud Practitioner (CLF-C02)** exam. Every project solves a realistic small-business problem and is documented like a client deliverable: what was built, why it matters, how it's secured, what it costs, and how it was cleaned up.

## How This Repo Works

Each project folder contains:

| File | Purpose |
|---|---|
| `README.md` | The business problem, services used, architecture, and what was built |
| `screenshots/` | Proof the build worked (console screenshots, command output) |
| `exam-mapping.md` | The CLF-C02 concepts this project demonstrates |
| `cost-notes.md` | Expected costs, Free Tier assumptions, cost controls |
| `cleanup.md` | What was deleted/disabled to avoid charges, and verification |

See [exam-coverage-map.md](exam-coverage-map.md) for how the projects map to all four exam domains, and [cost-and-cleanup-log.md](cost-and-cleanup-log.md) for the running record of resources created and torn down.

## Exam Domain Coverage

| Domain | Weight | Covered By |
|---|---|---|
| Cloud Concepts | 24% | Cloud value, global infrastructure, Well-Architected, DR, cloud economics |
| Security & Compliance | 30% | IAM, MFA, encryption, shared responsibility, least privilege, governance |
| Cloud Technology & Services | 34% | Compute, storage, databases, networking, serverless, integration, monitoring |
| Billing, Pricing & Support | 12% | Budgets, Cost Explorer, Pricing Calculator, support plans, Trusted Advisor |

## Project Index

| # | Project | Status |
|---|---|---|
| 1 | [Secure a New AWS Account for a Startup](projects/01-account-security-startup/) | 🔲 Not started |
| 2 | [Set Up Billing Alerts for a Small Business](projects/02-billing-alerts-small-business/) | 🔲 Not started |
| 3 | [Host a Coffee Brand Landing Page on S3](projects/03-s3-coffee-landing-page/) | 🔲 Not started |
| 4 | [Create a Private Document Storage Bucket for a Law Office](projects/04-private-document-bucket-law-office/) | 🔲 Not started |
| 5 | [Launch a Cloud Server for a Freelance Developer](projects/05-ec2-linux-server-devbox/) | 🔲 Not started |
| 6 | [Host a Small Business Website on EC2](projects/06-ec2-barber-shop-website/) | 🔲 Not started |
| 7 | [Build a Cloud Network for a Delivery App](projects/07-vpc-delivery-app-network/) | 🔲 Not started |
| 8 | [Create a Customer Database for a Gym](projects/08-rds-gym-member-database/) | 🔲 Not started |
| 9 | [Create a Homework Tracker Database with DynamoDB](projects/09-dynamodb-homework-database/) | 🔲 Not started |
| 10 | [Create a Serverless Function for a Pizza Shop](projects/10-lambda-pizza-order-function/) | 🔲 Not started |
| 11 | [Build an API for a Food Truck Menu](projects/11-api-gateway-food-truck-menu/) | 🔲 Not started |
| 12 | [Send Appointment Reminders with SNS](projects/12-sns-dental-appointment-reminders/) | 🔲 Not started |
| 13 | [Create an Order Processing Queue with SQS](projects/13-sqs-tshirt-order-queue/) | 🔲 Not started |
| 14 | [Monitor a Website with CloudWatch](projects/14-cloudwatch-website-monitoring/) | 🔲 Not started |
| 15 | [Create a Disaster Recovery Plan for an Online Store](projects/15-online-store-disaster-recovery-plan/) | 🔲 Not started |
| 16 | [Build a Full Homework Tracker App](projects/16-homework-tracker-serverless-app/) | 🔲 Not started |
| 17 | [Build a Monthly AWS Cost Report for a Nonprofit](projects/17-nonprofit-monthly-cost-report/) | 🔲 Not started |
| 18 | [Create an IAM Permissions Lab for a School](projects/18-school-iam-permissions-lab/) | 🔲 Not started |
| 19 | [Recommend Storage for Different Clients](projects/19-client-storage-recommendations/) | 🔲 Not started |
| 20 | [Build Your AWS Beginner Portfolio](projects/20-aws-beginner-portfolio/) | 🔲 Not started |
| 21 | [Build a Shared Responsibility Security Board for a Clinic](projects/21-clinic-shared-responsibility-board/) | 🔲 Not started |
| 22 | [Create an AWS Pricing Quote for a Coffee Shop Website](projects/22-coffee-shop-aws-pricing-quote/) | 🔲 Not started |
| 23 | [Pick the Right AWS Support Plan for Different Companies](projects/23-support-plan-recommendations/) | 🔲 Not started |
| 24 | [Design an AWS Multi-Account Setup for a Growing Company](projects/24-growing-company-aws-organization/) | 🔲 Not started |
| 25 | [Use AWS Artifact for Compliance Evidence](projects/25-artifact-compliance-evidence/) | 🔲 Not started |

**Status legend:** 🔲 Not started · 🟡 In progress · ✅ Complete

## Definition of Done

A project is not complete when the AWS resource exists. It is complete when the folder proves:
- **What** was built and **why** it matters to the business
- **How** it works (architecture diagram or plain-English explanation)
- **How** it is secured
- **What** it might cost
- **How** to clean it up (with verification that nothing is still billing)
