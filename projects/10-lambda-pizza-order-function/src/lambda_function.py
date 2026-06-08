import json

def lambda_handler(event, context):
    # Pull order details from the incoming request
    customer = event.get("customer_name", "Customer")
    pizza = event.get("pizza", "cheese")
    size = event.get("size", "medium")

    # Build a confirmation message
    message = f"Thanks {customer}! Your {size} {pizza} pizza order is confirmed and being prepared."

    return {
        "statusCode": 200,
        "body": json.dumps({"confirmation": message})
    }
