# MongoDB helm chart (minikube example)

This is not HelmRelease example

1. Add repo
```bash
helm repo add my-repo https://charts.bitnami.com/bitnami
```

2. Options for volumeMode=Filesystem

2.1 Option 1
Login to nodes and set volume folder with 777 rights. For example:

```bash
ssh k8s-node1
sudo chmod 0777 /tmp/hostpath-provisioner/default/my-mongodb
```

2.2 Option 2
TBD

3. Create custom values file mongodb_values.yml with next content
```text
---
initContainers:
  - name: mongodb-init
    image: docker.io/bitnami/mongodb:6.0.2-debian-11-r11
    command:
      - sh
      - '-c'
      - /bin/mkdir -pv /bitnami/mongodbx
    volumeMounts:
      - name: datadir
        mountPath: /bitnami

```

4. Install release

```bash
helm install my-mongodb -f ./mongodb_values.yml bitnami-helm/mongodb
```

5. End
