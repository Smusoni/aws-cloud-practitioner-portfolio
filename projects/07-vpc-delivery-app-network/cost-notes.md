# Cost Notes — Cloud Network (VPC)

## What This Costs You
$0. The core networking building blocks — VPC, subnets, route tables, and internet gateway — are all free to create and run.

## The One Thing That Would Cost Money
A NAT gateway (which lets private subnets reach the internet outbound) bills hourly. I intentionally did not create one, so there is no running cost here.

## Cost Controls
- No NAT gateway used.
- No paid resources running inside the network yet.
