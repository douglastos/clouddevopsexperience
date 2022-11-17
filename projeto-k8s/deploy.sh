#!/usr/bin/env bash

#criando images locais
echo "Criando images ..."
docker build -t douglastos/db:1.0 db/. 
docker build -t douglastos/backend-php:1.0 backend/.

#subindo imagem para dockerhub
echo "Subindo as imagens ..."
docker push douglastos/db:1.0
docker push douglastos/backend-php:1.0

echo "Subindo as servicos K8S ..."
kubectl apply -f ./services.yml

echo "Efetuadno os deploy em K8S ..."
kubectl apply -f ./deploy.yml
