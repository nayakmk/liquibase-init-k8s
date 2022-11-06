
## Minikube Deployment

> minikube image build -t liquibase-init-k8s -f ./Dockerfile .

> kubectl run liquibase-init-k8s --image=liquibase-init-k8s --image-pull-policy=Never --restart=Never  

## Deploy as Init Container

kubectl apply -f .\deployment.yaml