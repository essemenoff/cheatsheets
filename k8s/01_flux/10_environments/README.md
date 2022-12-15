# 10_Environments


1. Create Git repo source

```bash
flux create source git ess_environments \
  --namespace=default \
  --url=https://github.com/essemenoff/cheatsheets.git \
  --branch=master
```
or
```cmd.exe
flux create source git ess-environments ^
  --namespace=default ^
  --url=https://github.com/essemenoff/cheatsheets.git ^
  --branch=master
```

2. Create kustomization resources

```bash
flux create kustomization ess-kustomization \
    --namespace=default \
    --source=GitRepository/ess-environments \
    --path="./k8s/01_flux/10_environments/dev" \
    --prune=true \
    --interval=60m \
    --wait=true \
    --health-check-timeout=3m
```

or


```cmd.exe
flux create kustomization ess-kustomization ^
    --namespace=default ^
    --source=GitRepository/ess-environments ^
    --path="./k8s/01_flux/10_environments/dev" ^
    --prune=true ^
    --interval=60m ^
    --wait=true
```


3. End
