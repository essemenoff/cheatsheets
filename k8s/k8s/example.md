# Example

## Pre-requisites
- virtualbox
- minikube i virtualbox
- i choose external ip 192.168.60.10

# Run

```bash
kubectl create -f example.yaml
kubectl apply -f example.yaml
```

Log in to k8s node and curl

```bash
curl http://192.168.60.10:8765
```
and check iptables rules

```bash
iptables -S
```

curl from host
```bash
curl -vvvv http://<node port ip>:30543
```

or use host machine and create rout to this

```bash
minikube tunnel example-service -p mydev
```