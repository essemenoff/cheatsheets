# Strimzi


# Install operator

set KUBECONFIG=C:\Users\Evgenii_Semenov\.kube\config_minikube

```shell
#
helm repo add strimzi https://strimzi.io/charts/

#
helm install my-strimzi-operator strimzi/strimzi-kafka-operator
```

or deploy using kubectl CLI

```shell
kubectl apply -f https://strimzi.io/install/latest?namespace=default
```

???
```shell
kubectl api-resources | findstr "kafka"
```

## Deploy first kafka cluster

```bash
kubectl create -f cluster.yaml
kubectl get service my-cluster-kafka-external-bootstrap -n my-kafka-project -o=jsonpath='{.spec.ports[0].nodePort}{"\n"}'
```
