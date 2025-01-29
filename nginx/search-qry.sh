curl -u elastic:elastic -X GET "https://10.92.254.139:9200/my_custom_index/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "query": {
    "match": {
      "message": "error"
    }
  }
}
'

