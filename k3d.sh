#! /bin/zsh

k3d cluster create --config ./cluster.yaml

kubectl create namespace webapp

helm install nginx ingress-nginx/ingress-nginx

SLEEP_FOR=30
echo "Sleeping for $SLEEP_FOR seconds while load balancer comes up"

sleep $SLEEP_FOR 

source ~/.zshrc

docker push registry.localhost:5001/nanajanashia/k8s-demo-app:v1.0

ka mongo-config.yaml
ka mongo-secret.yaml
ka mongo.yaml
ka web-app.yaml
