# Cleanup — Cloud Network (VPC)

## What must be deleted to stop charges
- Nothing — the VPC, subnets, route tables, and internet gateway are all free. There are no ongoing charges.

## If you want to remove it later
- Delete the VPC (this removes its subnets, route tables, and detaches/deletes the gateway in one step).

## Verification
No charges appear for these resources in Cost Explorer, since VPC networking components without a NAT gateway are free.
