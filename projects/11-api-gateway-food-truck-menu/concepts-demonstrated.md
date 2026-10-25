# Concepts Demonstrated — API for a Food Truck Menu

| Concept | How it was applied |
|---|---|
| API Gateway | Built the public API `food-truck-menu-api` — the doorway and address a QR code points to — with a GET /menu route |
| Lambda integration | The route is backed by the Lambda function `foodTruckMenu`, which holds the menu and returns it as data |
| Request/response flow | A scan of the QR code calls the API, the function returns the menu, and the browser displays it (see screenshots/api-response.png) |
| Pay-per-use cost model | Both services bill only per request/run — no server running in the background, and no cost when no one is scanning |
| Logging & teardown | The function's CloudWatch log group (`/aws/lambda/foodTruckMenu`) is listed in cleanup.md as an optional final delete |
