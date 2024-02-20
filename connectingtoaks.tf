az aks get-credentials --resource-group azurecicd-project --name myakscluster

echo eVJ0Y3k5OTZqaE9NUmU5VQ== | base64 -d (password decrypt)
or 

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d


Securing ArgoCD: A Step-by-Step Guide to Resetting Admin Passwords
https://medium.com/@dulanjanalakmal/securing-argocd-a-step-by-step-guide-to-resetting-admin-passwords-bb5236208a64
