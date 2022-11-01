# FluxCD

## Getting started

Check your environment for fluxcd deployment
```bash
flux check
```

if check is't not OK please resolve it


## Start a bootstrap

Bootstrap flux infra in k8s
```bash
export GITHUB_USER=essemenoff
flux bootstrap github \
 --owner=$GITHUB_USER \
 --repository=essemenoff/cheatsheets \
 --branch=flux_test \
 --path=k8s/01_flux/clusters/production \
 --personal
```


## Remove all Flux stuff

``bash
flux uninstall --namespace=flux-system
```


## Useful link
* https://fluxcd.io/flux/installation/#github-and-github-enterprise
