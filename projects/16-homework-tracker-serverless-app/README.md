# Homework Tracker Serverless App

Hi Terence — here's the full serverless tracking application I built for the homework tracker scenario.

## What You Asked For
A parent or student needs a lightweight, reliable app to quickly log homework tasks, view due dates, update progress, and delete tasks when finished—all without paying for an active server to run 24/7.

## What I Built For You
I built a completely serverless web application stack. The interface talks to a custom API, which triggers backend code to instantly talk to a fast database. Because it is completely serverless, the entire application scales to zero when no one is actively using it, meaning you never pay for idle computing time. I have fully built, tested, and verified every single route (Create, List, Update, Delete) to ensure smooth operations.

## The AWS Services I Used (plain English)
- **Amazon S3**: Hosts the frontend interface files securely and cheaply.
- **Amazon API Gateway**: Acts as the front door, routing data securely from the app interface to the backend logic.
- **AWS Lambda**: The serverless brain of the app. It runs isolated pieces of code only when a user clicks a button, then shuts down instantly.
- **Amazon DynamoDB**: A lightning-fast, flexible NoSQL cloud database where all your homework task records are safely stored.
- **Amazon CloudWatch**: Keeps track of operational health and saves error logs so we can troubleshoot if any issues pop up.

## How It Works
```mermaid
flowchart LR
    User([Browser/Frontend]) --> S3[Amazon S3 / Static Client]
    User --> APIGW[Amazon API Gateway]
    APIGW --> Lambda[AWS Lambda Functions]
    Lambda --> DynamoDB[(Amazon DynamoDB)]
