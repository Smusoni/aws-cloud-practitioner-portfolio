# Concepts Demonstrated — Customer Database for a Gym

| Concept | How it was applied |
|---|---|
| Managed relational database (RDS) | Created a managed MySQL database on Amazon RDS (instance `gym-member-db`) instead of running a database server by hand |
| Schema design | Designed a `members` table and loaded it with sample member records (name, membership type, join date) |
| SQL queries | Ran real queries against the live database and captured the results (see screenshots/query-results.png) |
| Instance sizing | Used a db.t3.micro single instance — the Sandbox / free-tier-eligible setup (750 hours/month for the first 12 months) |
| Cost lifecycle | RDS bills hourly while the database runs, even idle; the database was deleted after verification so it costs nothing now |
| Teardown hygiene | Deletion skipped the final snapshot and retained automated backups, so no storage charges linger (see cleanup.md) |
