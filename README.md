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

Additional addon:
```
minikube addons enable ingress
```

#### Start Cluster
```
minikube start --driver=docker
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
