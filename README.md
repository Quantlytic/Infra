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
minikube start --driver=docker
```

Additional addon:
```
minikube addons enable ingress
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

#### Configure Strimzi
Create kafka namespace
```
kubectl create namespace kafka
```
Install strimzi
```
kubectl create -f 'https://strimzi.io/install/latest?namespace=kafka' -n kafka
```