curl -u elastic:elastic -X PUT "https://10.92.254.139:9200/logs" -H 'Content-Type: application/json' -d'
{
  "mappings": {
    "properties": {
      "timestamp": {
        "type": "date"
      },
      "log_level": {
        "type": "keyword"
      },
      "message": {
        "type": "text"
      },
      "source": {
        "type": "keyword"
      },
      "host": {
        "type": "keyword"
      },
      "environment": {
        "type": "keyword"
      },
      "response_time": {
        "type": "float"
      }
    }
  }
}
'
