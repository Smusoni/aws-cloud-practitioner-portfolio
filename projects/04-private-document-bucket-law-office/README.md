# Private Document Storage Bucket for a Law Office

Hi Terence — here is the secure cloud storage solution I built for the law office scenario to ensure sensitive client data remains completely private.

## What You Asked For
A law office needs a private, highly secure digital filing cabinet in the cloud to store legal contracts and sensitive client files. Absolutely nothing should be viewable by the public, and all data must be encrypted automatically.

## What I Built For You
I created a private, locked-down storage repository using Amazon S3. I enabled mandatory server-side encryption so that files are scrambled the second they hit the cloud. Finally, I enforced "Block Public Access" guardrails and attached a strict access policy ensuring only authorized legal staff can view the documents.

## The AWS Services I Used (plain English)
- **Amazon S3 (Simple Storage Service)**: The cloud storage bucket where files are kept. It is highly durable and designed to scale infinitely.
- **AWS KMS (Key Management Service) / S3 Managed Encryption**: The system that automatically handles the cryptographic keys to encrypt the legal files at rest.
- **AWS IAM (Identity and Access Management)**: The security gatekeeper used to define exactly which employees have permission to read the files, while completely blocking the public.

## How It Works
```mermaid
flowchart LR
    Staff[Authorized Legal Staff] -->|Secure Access Granted| S3[Encrypted S3 Bucket]
    Public[Public Internet] -->|BLOCKED by Bucket Policy| S3
