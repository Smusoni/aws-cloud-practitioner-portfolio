# Concepts Demonstrated (Exam Mapping)

This project locks down foundational knowledge required for the Security and Compliance domain (30% of the CLF-C02 exam):

* **S3 Block Public Access:** Acts as an account-level or bucket-level guardrail that overrides any granular object permissions to prevent accidental data exposure to the public internet.
* **Server-Side Encryption (SSE-S3):** Fulfills data-at-rest compliance requirements using standard AES-256 encryption keys managed entirely by Amazon S3.
* **Object Access Control:** Proving that by disabling ACLs and utilizing default private bucket settings, all objects inherit strict private access rules returning a `403 Forbidden` error to unauthorized users.
