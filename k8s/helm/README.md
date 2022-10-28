# Helm

See a source documentation link https://www.baeldung.com/ops/kubernetes-helm

## Pre-requisites

1. Install helm

## Creation

```bash
helm create hello-world
```

## Installation

Linting
```bash
helm lint ./hello-world
```


```bash
helm template ./hello-world
```


```bash
helm install --set name=hello-world hello-world ./hello-world
```

## Check

```bash
helm ls --all
```

```bash
export NODE_PORT=$(kubectl get --namespace default -o jsonpath="{.spec.ports[0].nodePort}" services hello-world)
export NODE_IP=$(kubectl get nodes --namespace default -o jsonpath="{.items[0].status.addresses[0].address}")
curl http://$NODE_IP:$NODE_PORT
```

expected output is

```text
hello
```

## Useful

Rollback
```bash
helm rollback hello-world 1
```

Uninstall
```bash
helm uninstall hello-world
```

Distributing chart
```bash
helm package ./hello-world
```

### Repo managment


```bash
helm repo index my-repo/ --url https://<username>.github.io/my-repo
```

```bash
helm repo add my-repo https://my-pages.github.io/my-repo
```

```bash
helm install my-repo/hello-world --name=hello-world
```


## Helm search

```bash
helm search repo <KEYWORD>
```
