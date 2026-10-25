# Cost Notes — Host a Small Business Website on EC2


## Expected Cost

EC2 bills hourly while the instance is running, so this website's cost
is the running cost of one small EC2 instance (Amazon Linux) serving a
static landing page — plus its root EBS volume while it exists. There is
no per-visitor charge. The repo does not record the instance size or a
dollar figure for this project, so no amount is claimed here.


## Free Tier Assumptions

None stated in the project files — treat the instance as billable while
it runs, and rely on the account budget alert as the backstop.


## Cost Controls

- The site is deployed by a boot-time automation script (system updates,
  Apache install, page deployment), so the instance can be terminated and
  rebuilt instead of kept running "just in case."
- Teardown is one step: terminating the instance automatically deletes
  the attached root EBS volume, leaving zero residual compute or storage
  cost (see cleanup.md).
- A security group opens only Port 80 to the public; administrative
  access stays locked down — no extra exposed services to manage.
