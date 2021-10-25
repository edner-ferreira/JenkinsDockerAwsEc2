#nohup gnome-terminal -- sh -c "java -jar Z4YzapforyouEmail-0.0.1-SNAPSHOT.jar; bash"
#Para todos os containers
sudo docker container stop $(docker container ls -a -q)
#Entra no modo SuperUser
sudo su
#Remove todos os containers
sudo docker container rm $(docker container ls -a -q)
#Remove todas as imagens
docker image rm $(docker image ls -a -q)
#Constroi uma imagem a partir do dockerfile
sudo docker build -t springio/ednersf .
#Roda o container depois 
sudo docker run -p 8081:8081 -q springio/ednersf

