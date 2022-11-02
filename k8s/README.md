# k8s environment

## Kubernetes

Show profiles
```bash
minikube profile list
```

Start minikube with two nodes
```bash
minikube start --vm-driver=virtualbox --no-vtx-check \
 --nodes 2 \
 --kubernetes-version "1.22.6" \
 --profile "my-dev"
```

Delete kube
```bash
minikube delete -p my-dev
```

### HNC (hierarchical-namespaces controller)

```bash
HNC_VERSION=v1.0.0
kubectl apply -f https://github.com/kubernetes-sigs/hierarchical-namespaces/releases/download/${HNC_VERSION}/default.yaml
```

## Helm


## Flux

FluxCD architecture
![image](.docs/flux-cd-diagram.png)


GitOps using FluxCD. FluxCD architecture
![image](.docs/gitops-toolkit.png)

Components are

* Source Controller
  * GitRepository CRD
  * OCIRepository CRD
  * HelmRepository CRD
  * HelmChart CRD
  * Bucket CRD
* Kustomize Controller
  * Kustomization CRD
* Helm Controller
  * HelmRelease CRD
* Notification Controller
  * Provider CRD
  * Alert CRD
  * Receiver CRD
* Image Automation Controllers
  * ImageRepository CRD
  * ImagePolicy CRD
  * ImageUpdateAutomation CRD


## Usefule links
* 
* https://github.com/fluxcd/flux2
