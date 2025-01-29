curl -u elastic:elastic -X PUT "https://10.92.254.139:9200/my_custom_index" -H 'Content-Type: application/json' -d'
{
  "settings": {
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
      }
    }
  }
}
'

