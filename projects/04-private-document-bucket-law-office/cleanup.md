# Cleanup & Takedown Guide - Project 4

To fully decommission this project and ensure no empty resources remain in the AWS account:

1. **Empty the S3 Bucket:** 
   * Navigate to the Amazon S3 console.
   * Select the bucket `terence-law-firm-documents-...` and click the **Empty** button.
   * Type `permanently delete` to confirm the removal of all stored objects (including `confidential_contract.txt`).
2. **Delete the S3 Bucket:**
   * Once completely empty, return to the S3 bucket list.
   * Select the bucket and click **Delete**.
   * Type the exact name of the bucket to confirm permanent deletion.
