curl -u elastic:elastic -X PUT "https://10.92.254.139:9200/nginx-logs-2025.01.29" -H 'Content-Type: application/json' -d'
{
  "settings": {
    "number_of_shards": 5,
    "number_of_replicas": 1,
    "analysis": {
      "analyzer": {
        "my_custom_analyzer": {
          "type": "custom",
          "tokenizer": "standard",
          "filter": ["lowercase", "stop"]
        }
      }
    }
  },
  "mappings": {
    "properties": {
      "message": {
        "type": "text",
        "analyzer": "my_custom_analyzer"
      },
      "url_path": {
        "type": "text",
        "analyzer": "my_custom_analyzer"
      },
      "@timestamp": {
        "type": "date"
      },
      "http.response.status_code": {
        "type": "integer"
      }
    }
  }
}
'

