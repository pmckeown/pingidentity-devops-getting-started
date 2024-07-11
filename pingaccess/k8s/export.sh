curl -k -s -X "GET" \
  "https://demo-pingaccess-admin.pingdemo.example/pa-admin-api/v3/config/export" \
  -H "accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-XSRF-Header: PingAccess" \
  --user "administrator:2FederateM0re" | jq -r > data.json

kubectl cp demo-pingaccess-admin-0:/opt/out/instance/conf/pa.jwk -c pingaccess-admin pa.jwk

kubectl apply -k .
