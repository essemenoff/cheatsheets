# Kustomize

## Manually


Create
```bash
cd ./k8s/01_flux/kustomize/
kubectl kustomize > test.tmp
kubectl apply -f test.tmp
```

Destroy
```bash
kubectl delete -f test.tmp
```