# Docker registry

## Installation

```shell
helm repo add twuni https://helm.twun.io
helm install registry twuni/docker-registry -f values.yaml
# or
helm upgrade registry twuni/docker-registry -f values.yaml
```


## How to connect

See output of next command
```
helm status registry
```

Check URL

```
curl -k -vvv http://registry.evgenii.com/_ping
```

```
docker login registry.evgenii.com -u username -p password
```
