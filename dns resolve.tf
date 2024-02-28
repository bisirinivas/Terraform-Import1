curl --resolve  "echo.antonputra.pvt:80:20.161.173.35" http://echo.antonputra.pvt/

k get ing
NAME            CLASS            HOSTS                 ADDRESS         PORTS   AGE
echoserver-v1   external-nginx   echo.antonputra.pvt   20.161.173.35   80      7m48s
---
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: echoserver-v1
spec:
  ingressClassName: external-nginx
  rules:
    - host: echo.antonputra.pvt
      http:
        paths:
          - path: /
            pathType: Exact
            backend:
              service:
                name: echoserver-v1
                port:
                  number: 8080


                    ingress conroller


                    ---
controller:
  ingressClassResource:
    name: external-nginx
  service:
    annotations:
      service.beta.kubernetes.io/azure-load-balancer-health-probe-request-path: /healthz
  # Required for ACME
  watchIngressWithoutClass: true
  extraArgs:
    ingress-class: external-nginx
