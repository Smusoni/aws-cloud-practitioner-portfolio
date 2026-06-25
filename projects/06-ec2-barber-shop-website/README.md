# Host a Small Business Website on EC2

Hi Terence — here is the live, cloud-hosted landing page I built for your barber shop business scenario.

## What You Asked For
A local barber shop needs a lightweight, reliable, and cost-effective web server to host a simple public-facing landing page so customers can find business hours and services online.

## What I Built For You
I provisioned a virtual cloud server using Amazon EC2 running a secure Amazon Linux machine. To make the setup completely efficient, I wrote an automation script that instantly updates the system, installs the standard Apache web server, and deploys your custom landing page the exact second the server boots up. Finally, I configured a secure network firewall to allow incoming public web traffic while keeping administrative access locked down.

## The AWS Services I Used (plain English)
- **Amazon EC2 (Elastic Compute Cloud)**: The virtual server machine running in the AWS cloud that keeps your website running 24/7.
- **Amazon Machine Image (AMI)**: The clean pre-configured Linux operating system template used to launch the server.
- **Security Groups**: The virtual network firewall that acts as a gatekeeper, explicitly opening Port 80 to let customers view the website while blocking unauthorized access.

## How It Works
```mermaid
flowchart LR
    Customer[Everyday Customer] -->|HTTP Port 80 Allowed| SG[Security Group Firewall]
    SG -->|Traffic Passes| EC2[Apache Web Server on EC2]
