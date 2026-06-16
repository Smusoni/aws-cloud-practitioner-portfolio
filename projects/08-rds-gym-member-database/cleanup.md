# Cleanup — Customer Database (RDS)

## What must be deleted to stop charges
- [ ] Delete the RDS instance `gym-member-db` (RDS → Databases → select → Actions → Delete)
- [ ] Uncheck "Create final snapshot" and "Retain automated backups" when deleting

## Cleanup performed on
Date: TODO (delete after screenshots are saved)

## Verification
After deleting, the database no longer appears in the RDS console. Confirm in Cost Explorer the next day that RDS charges returned to zero.
