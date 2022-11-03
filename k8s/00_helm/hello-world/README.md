# Helm

See a source documentation link https://www.baeldung.com/ops/kubernetes-helm
this is not HelmRelease.

## Pre-requisites

1. Setup k8s or minikube cluster.
2. Install helm.
3. Set working folder.

```bash
cd k8s/helm/
```


## Installation

Linting
```bash
helm lint ./hello-world
```

Check a result template
```bash
helm template ./hello-world
```

Install to cluster
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
curl -s http://$NODE_IP:$NODE_PORT
```

expected output is

```text
hello
```

## Upgrade

Upgrading
```bash
helm upgrade -f ./hello-world/values_01.yaml hello-world ./hello-world
```

Check revision
```bash
helm ls --all
```

Rollback if it's required

```bash
helm rollback hello-world 1
```

wait and check revision
```bash
helm ls --all
```

## Uninstall

Uninstall
```bash
helm uninstall hello-world
```
## Useful

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
