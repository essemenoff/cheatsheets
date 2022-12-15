# Podinfo (flux)


## Installation

```bash
flux create source git my-podinfo \
    --namespace=default \
    --url=https://github.com/essemenoff/cheatsheets \
    --branch=master
```


```bash
flux create kustomization ess-podinfo \
  --namespace=default \
  --source=GitRepository/my-podinfo \
  --path="./k8s/01_flux/podinfo" \
  --interval=200m
```


```bash
flux reconcile hr podinfo-myflux -n default --with-source
```

Suspend/Resume reconcilation
```bash
flux suspend hr podinfo-myflux -n default
flux resume hr podinfo-myflux -n default
```

## Removing

```bash
flux -n default delete helmrelease podinfo-myflux -s
flux -n defaultdelete source git my-podinfo -s
flux -n default delete source helm ext-podinfo -s
flux -n default delete kustomization ess-podinfo -s
```

