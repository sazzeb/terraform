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
     kubectl get ingress -n checklists
```

#####  Check if the TLS is working properly
```bash
    kubectl get certificate -n checklists
```

```bash
    kubectl describe certificate outlines-info-tls -n checklists
    kubectl describe certificate bullboard-info-tls -n checklists
    kubectl describe ingress outlines-info-ingress -n checklists
    kubectl describe ingress bullboard-ingress -n checklists
    kubectl logs -n cert-manager deploy/cert-manager
```
