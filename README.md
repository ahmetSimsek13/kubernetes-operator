# kubernetes-operator
A https nginx ingress controller

Test Application for https nginx controller 

In this application we are going to use minikube for local cluster.
In order to use the application, we need some prerequisites. These are installing helm (v3) and Cert Manager to our cluster.

Please run the script prerequisite.sh to let them be deployed and configured.

After validating the install , we can deploy our applications helm charts with 

helm install <name-of-helm-install> ./my-app

This will deploy our application with default values which have nginx as an image with a single replica and with an ingress host named "test-app.com"

If you want to change these settings, either edit the values.yaml file or run the command with parameters setting extension like

helm install <name-of-helm-install> ./my-app
	--set host: <your-host-url> --set port: <your-port> --set replicaCount: <your-scale-count>

To test the application first edit /etc/hosts file and add ip of cluster and ingress host. For default installation of application it is 

<minikube ip> test-app.com

For optional installation it is 

<minikube ip>  <your-host-url>

After adding this record, try the apllication by

curl -k https://test-app.com or 
curl -k https://<your-host-url>
