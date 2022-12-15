# Kustomize

## Manually


Create
```bash
kubectl apply -f grafana.yaml
```

Destroy
```bash
kubectl port-forward service/grafana 3000:3000
```