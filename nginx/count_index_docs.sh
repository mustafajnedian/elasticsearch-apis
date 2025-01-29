# Check document count in the old index
curl -u elastic:elastic -X GET "https://10.92.254.139:9200/.ds-logs-nginx.access-default-2025.01.26-000001/_count?pretty"

# Check document count in the new index
curl -u elastic:elastic -X GET "https://10.92.254.139:9200/nginx-logs-reindexed/_count?pretty"

