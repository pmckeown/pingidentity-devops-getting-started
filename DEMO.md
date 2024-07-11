# Demo Steps

- Create ns
- Create devops secret
- k apply -f ./pingaccess/k8s/role.yaml
- k apply -f ./pingaccess/k8s/rolebinding.yaml
- helm upgrade --install demo pingidentity/ping-devops -f 30-helm/everything.yaml -f 30-helm/ingress-demo.yaml
- Show overridden yaml file changing PVC and image config only
- Show script at pingaccess/scripts
- Show no PVC
- Show pingaccess-admin logs
- Show pingaccess-admin UI