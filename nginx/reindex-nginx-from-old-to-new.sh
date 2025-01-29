curl -u elastic:elastic -X POST "https://10.92.254.139:9200/_reindex" -H 'Content-Type: application/json' -d'
{
  "source": {
    "index": ".ds-logs-nginx.access-default-2025.01.26-000001"
  },
  "dest": {
    "index": "nginx-logs-reindexed"
  }
}
'

