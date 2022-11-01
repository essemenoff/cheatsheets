# Helm cheatsheet

See a source documentation link https://www.baeldung.com/ops/kubernetes-helm

Creating a chart
```bash
helm lint ./hello-world
```

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

Check
```bash
helm ls --all
```

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

Uninstall
```bash
helm uninstall hello-world
```

Distributing a chart
```bash
helm package ./hello-world
```

## Repo managment

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
