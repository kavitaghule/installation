{2 CPUs or more
2GB of free memory
20GB of free disk space
Internet connection}

set -x

sudo yum install java -y
sudo yum install docker -y
sudo systemctl start docker
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /bin/kubectl
kubectl version --client
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /bin/minikube 
minikube start --force
minikube delete

# install helm chart
