
## Docker Build

docker build -t liquibase-init-k8s -f ./liquibase.Dockerfile .

## Minikube Deployment

> minikube image build -t spring-app-k8s -f ./Dockerfile .

> minikube image build -t liquibase-init-k8s -f ./liquibase.Dockerfile .

> kubectl run liquibase-init-k8s --image=liquibase-init-k8s --image-pull-policy=Never --restart=Never  

## Deploy as Init Container

> kubectl apply -f .\deployment.yaml

## Deploy PostgreSQL

docker run --name postgresql -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=docker -p 5432:5432 -v /data:/var/lib/postgresql/data -d postgres