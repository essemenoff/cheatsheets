#


##

```bash
flux create source git my-mongodb \
    --namespace=default \
    --url=https://github.com/essemenoff/cheatsheets \
    --branch=master
```


```bash
flux create kustomization ess \
  --namespace=default \
  --source=GitRepository/my-mongodb \
  --path="./k8s/01_flux/mongodb" \
  --interval=200m
```


```bash
flux reconcile hr mongodb -n default --with-source
```

```bash
flux suspend helmrelease mongodb -n default
flux resume helmrelease mongodb -n default
```

##

