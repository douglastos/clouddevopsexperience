REM criando images locais
echo "Criando images ..."
REM docker build -t douglastos/db:1.0 db/. 
REM docker build -t douglastos/backend-php:1.0 backend/.

REM subindo imagem para dockerhub
echo "Subindo as imagens ..."
REM docker push douglastos/db:1.0
REM docker push douglastos/backend-php:1.0

echo "Subindo as servicos K8S ..."
kubectl apply -f ./services.yml

echo "Efetuadno os deploy em K8S ..."
kubectl apply -f ./deploy.yml
