curl -u elastic:elastic -X POST "https://10.92.254.139:9200/orders/_doc/1" -H 'Content-Type: application/json' -d'
{
  "order_id": 1,
  "customer_id": 101,
  "order_date": "2025-01-01",
  "total_amount": 250.00,
  "status": "completed",
  "items": [
    {"item_id": "A101", "quantity": 2, "price": 50.00},
    {"item_id": "A102", "quantity": 1, "price": 150.00}
  ]
}
'

curl -u elastic:elastic -X POST "https://10.92.254.139:9200/orders/_doc/2" -H 'Content-Type: application/json' -d'
{
  "order_id": 2,
  "customer_id": 102,
  "order_date": "2025-01-02",
  "total_amount": 150.00,
  "status": "processing",
  "items": [
    {"item_id": "A103", "quantity": 3, "price": 50.00}
  ]
}
'

curl -u elastic:elastic -X POST "https://10.92.254.139:9200/orders/_doc/3" -H 'Content-Type: application/json' -d'
{
  "order_id": 3,
  "customer_id": 101,
  "order_date": "2025-01-03",
  "total_amount": 300.00,
  "status": "completed",
  "items": [
    {"item_id": "A104", "quantity": 1, "price": 300.00}
  ]
}
'
