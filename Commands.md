
## Docker Build

> docker build -t spring-app-k8s -f ./Dockerfile .

> docker build -t liquibase-init-k8s -f ./liquibase.Dockerfile .

### Deploy PostgreSQL

> docker run --name postgresql -e POSTGRES_PASSWORD=docker -p 5432:5432  --net liquibase -d postgres

### Create Docker User Defined Network

> docker network create liquibase 

### Running Containers using the Network

> docker run --name postgresql -e POSTGRES_PASSWORD=docker -p 5432:5432  --net liquibase -d postgres

> docker run --rm -it --net liquibase liquibase-init-k8s:latest /bin/sh

then run: `liquibase update`

## Minikube Deployment

> minikube image build -t spring-app-k8s -f ./Dockerfile .

> minikube image build -t liquibase-init-k8s -f ./liquibase.Dockerfile .

### Running Minikube Image as Pod

> kubectl run liquibase-init-k8s --image=liquibase-init-k8s --image-pull-policy=Never --restart=Never  

## Deploy as Init Container

> kubectl apply -f .\deployment.yaml

## PostgreSQL using Helm



