curl -u elastic:elastic -X POST "https://10.92.254.139:9200/my_custom_index/_doc/1" -H 'Content-Type: application/json' -d'
{
  "message": "Error 404: Page not found",
  "url_path": "/nginx_status"
}
'

