curl -u elastic:elastic -X PUT "https://10.92.254.139:9200/nginx-logs" -H 'Content-Type: application/json' -d'
{
  "settings": {
    "analysis": {
      "analyzer": {
        "default": {
          "type": "standard",
          "stopwords": "_english_"
        }
      }
    }
  }
}
'
