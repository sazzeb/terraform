## Run the first 

The first code should be run before adding TLS, HTTPS, secure

```bash
    terraform init
```
Second

```bash
    terraform plan
```

Third

```bash
    terraform apply
```


####  Pull the second part of the code for ssl after point the code to Loadbalancer
#### Then apply


```bash
    terraform apply
```

####  Apply this to check get ingress on application

```bash
     kubectl get ingress -n checklist
```

#####  Check if the TLS is working properly
```bash
    kubectl get certificate -n checklist
```

```bash
    kubectl describe certificate outlines-info-tls -n checklist
    kubectl describe certificate bullboard-info-tls -n checklist
    kubectl describe ingress outlines-info-ingress -n checklist
    kubectl describe ingress bullboard-ingress -n checklist
    kubectl logs -n cert-manager deploy/cert-manager
```