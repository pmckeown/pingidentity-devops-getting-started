curl -k -s -X "GET" \
  "https://demo-pingfederate-admin.pingdemo.example/pf-admin-api/v1/bulk/export" \
  -H "accept: application/json" \
  -H "Content-Type: application/json" \
  -H "X-XSRF-Header: PingFederate" \
  --user "administrator:2FederateM0re" | jq -r > data.json

POD_NAME=$(kubectl get pod -l app.kubernetes.io/name=pingfederate-admin -o jsonpath="{.items[0].metadata.name}")
kubectl cp "${POD_NAME}":/opt/out/instance/server/default/data/pf.jwk pf.jwk

kubectl apply -k .
