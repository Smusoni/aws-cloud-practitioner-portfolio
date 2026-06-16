# Cost Notes — Customer Database (RDS)

## What This Costs You
A db.t3.micro single instance is free-tier eligible (750 hours/month for the first 12 months). Outside free tier, RDS bills hourly while the database is running.

## The Key Point
Like EC2, RDS charges while running — even when idle. Deleting the database stops all charges. This one was deleted after verification, so it costs nothing now.

## Cost Controls
- Used the Sandbox / single-instance, free-tier-eligible setup (db.t3.micro).
- Deleted the database after capturing proof.
- The account budget alert catches anything left running.
