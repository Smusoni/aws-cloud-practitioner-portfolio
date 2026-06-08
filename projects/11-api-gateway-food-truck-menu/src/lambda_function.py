import json

def lambda_handler(event, context):
    menu = {
        "food_truck": "Terence Street Eats",
        "items": [
            {"name": "Birria Tacos", "price": "$12"},
            {"name": "Loaded Fries", "price": "$9"},
            {"name": "Grilled Chicken Bowl", "price": "$11"},
            {"name": "Horchata", "price": "$4"}
        ]
    }
    return {
        "statusCode": 200,
        "headers": {"Content-Type": "application/json"},
        "body": json.dumps(menu)
    }
