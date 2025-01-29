curl -u elastic:elastic -X POST "https://10.92.254.139:9200/my_custom_index/_analyze?pretty" -H 'Content-Type: application/json' -d'
{
  "analyzer": "my_custom_analyzer",
  "text": "Error 404: Page not found"
}
'

