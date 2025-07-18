# Infra
Infrastructure services needed for the data pipeline.


# Setup
## Installation
### Install Docker
```
sudo apt-get install -y docker.io
```

### Setup Minikube

To install:
```
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chmod +x /usr/local/bin/minikube
```

#### Start Cluster
```
minikube start \
  --mount \
  --mount-string="<Host path - data>:/mnt/k8s-data"
```

#### Setup Kubectl
Install Kubectl with minikube:
```
minikube kubectl -- get po -A
```

To simplify commands, add the following alias to your `.bashrc`:
```
alias kubectl="minikube kubectl --"
```
Don't forget to run `source ~/.bashrc` after adding the alias.

### Setup Kafka
#### Configure Strimzi
Create kafka namespace
```
kubectl create namespace kafka
```
Install strimzi
```
kubectl create -f 'https://strimzi.io/install/latest?namespace=kafka' -n kafka
```

### Setup minio
Make sure to create `minio/overlays/<environment>/minio.env` to configure minio environment variables. Modify the `kustomization.yaml` overlays to change data path, volume size, etc.

Recommended to run `./start-dev.sh` to run the minikube start command, install ingress addon, and start `minikube tunnel` in the background.