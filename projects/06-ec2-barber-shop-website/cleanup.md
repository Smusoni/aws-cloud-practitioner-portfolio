# Cleanup & Takedown Guide - Project 6

To completely decommission this project and ensure your AWS account does not incur ongoing compute or storage footprints:

1. **Terminate the EC2 Instance:**
   * Navigate to the **EC2 Instances** dashboard in the AWS Console.
   * Select the `terence-barber-shop-website` instance.
   * Click the **Instance state** dropdown menu and select **Terminate instance**.
2. **Confirm Destruction:**
   * Click **Terminate** when prompted. This action completely shuts down the virtual machine and automatically deletes the attached root EBS storage volume, ensuring zero residual costs.
