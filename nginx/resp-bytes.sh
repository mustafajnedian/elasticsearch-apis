curl -u elastic:elastic -X GET "https://10.92.254.139:9200/.ds-logs-nginx.access-default-2025.01.26-000001/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "aggs": {
    "avg_response_time": {
      "avg": {
        "field": "http.response.body.bytes"
      }
    }
  },
  "size": 0
}
'

