curl -u elastic:elastic -X GET "https://10.92.254.139:9200/.ds-logs-nginx.access-default-2025.01.26-000001/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "aggs": {
    "status_codes": {
      "terms": {
        "field": "http.response.status_code",
        "size": 10
      }
    }
  },
  "size": 0
}
'
