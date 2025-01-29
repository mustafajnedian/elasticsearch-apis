curl -u elastic:elastic -X GET "https://10.92.254.139:9200/.ds-logs-nginx.access-default-2025.01.26-000001/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "aggs": {
    "requests_over_time": {
      "date_histogram": {
        "field": "@timestamp",
        "fixed_interval": "1h"
      }
    }
  },
  "size": 0
}
'
