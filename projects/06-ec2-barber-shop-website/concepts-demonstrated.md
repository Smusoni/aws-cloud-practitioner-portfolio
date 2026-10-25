# Concepts Demonstrated — Host a Small Business Website on EC2

| Concept | How it was applied |
|---|---|
| EC2 instance provisioning | Launched a virtual cloud server on Amazon EC2 running Amazon Linux (instance `terence-barber-shop-website`) |
| User data / boot automation | Wrote a script that runs at boot to update the system, install Apache, and deploy the custom landing page — no manual server setup |
| Security groups | Configured a security group opening Port 80 to public web traffic while keeping administrative access locked down |
| EBS root volume lifecycle | Terminating the instance automatically deletes its attached root EBS volume, so teardown leaves no storage behind |
| Cost awareness | EC2 bills hourly while running; the rebuild-from-script design means the instance only needs to exist while the site is being demonstrated |
