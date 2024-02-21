Change the argocd-server service type to LoadBalancer:

kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "LoadBalancer"}}'


https://foxutech.medium.com/setup-argocd-on-azure-kubernetes-services-9c3fa543f4b6
