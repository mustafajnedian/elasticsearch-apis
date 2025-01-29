curl -u elastic:elastic -X POST "https://10.92.254.139:9200/logs/_doc/1" -H 'Content-Type: application/json' -d'
{
  "timestamp": "2025-01-01T12:00:00Z",
  "log_level": "INFO",
  "message": "User login successful",
  "source": "auth-service",
  "host": "server1",
  "environment": "production",
  "response_time": 123.45
}
'

curl -u elastic:elastic -X POST "https://10.92.254.139:9200/logs/_doc/2" -H 'Content-Type: application/json' -d'
{
  "timestamp": "2025-01-01T12:05:00Z",
  "log_level": "ERROR",
  "message": "Database connection failed",
  "source": "db-service",
  "host": "server2",
  "environment": "production",
  "response_time": 0.00
}
'

curl -u elastic:elastic -X POST "https://10.92.254.139:9200/logs/_doc/3" -H 'Content-Type: application/json' -d'
{
  "timestamp": "2025-01-01T12:10:00Z",
  "log_level": "WARN",
  "message": "High memory usage detected",
  "source": "monitoring-service",
  "host": "server1",
  "environment": "staging",
  "response_time": 200.00
}
'

