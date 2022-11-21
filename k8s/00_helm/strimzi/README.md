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

1. Download CLI zip https://kafka.apache.org/


2. Get URL

```bash
kubectl create -f cluster.yaml
kubectl get service my-cluster-kafka-external-bootstrap -o=jsonpath='{.spec.ports[0].nodePort}'
#kubectl get nodes --output=jsonpath='{range .items[*]}{.status.addresses[?(@.type=="InternalIP")].address}{"\n"}{end}'

# Run in different consoles
bin/kafka-console-producer.sh --bootstrap-server <node-address>:_<node-port>_ --topic my-topic
bin/kafka-console-consumer.sh --bootstrap-server <node-address>:_<node-port>_ --topic my-topic --from-beginning
```

Example
```bash
bin/kafka-console-producer.sh --bootstrap-server 192.168.59.102:32336 --topic my-topic
bin/kafka-console-consumer.sh --bootstrap-server 192.168.59.102:32336 --topic my-topic --from-beginning
```

3. Typ anything in "bin/kafka-console-producer.sh" console and see the same in bin/kafka-console-consumer.sh

