#!/bin/bash

#First Install helm 

curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
sudo apt-get install apt-transport-https --yes
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm

#Add cert-manager helm to our repo
helm repo add jetstack https://charts.jetstack.io
# Create namespace for cert-manager
kubectl create namespace cert-manager
# If you use Helm v3+
$ helm install cert-manager jetstack/cert-manager --namespace cert-manager --version v1.0.4 --set installCRDs=true

# If you use Helm v2
#$ helm install --name cert-manager --namespace cert-manager --version v1.0.4 jetstack/cert-manager

#Enable minikube ingress
minikube addons enable ingress


-------

chmod 755 helm_install.sh

./helm_install.sh