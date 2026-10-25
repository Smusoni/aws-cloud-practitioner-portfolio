# Concepts Demonstrated — Create a Serverless Function for a Pizza Shop

| Concept | How it was applied |
|---|---|
| Serverless compute (Lambda) | Built the function `pizzaOrderConfirmation` — it takes a customer name, pizza type, and size, and returns an order confirmation message |
| Event-driven execution | The function runs only when triggered; there is no server to provision, patch, or leave running |
| Test events | Tested the function with a sample order event before calling it done |
| Logging (CloudWatch Logs) | Every test run was logged to CloudWatch Logs, and the logs were read to confirm the function executed correctly |
| Pay-per-use cost model | Billing is per request and per millisecond of run time, with an always-free tier — the opposite cost shape from an always-on server |
