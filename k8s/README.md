# k8s environment

## Kubernetes


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