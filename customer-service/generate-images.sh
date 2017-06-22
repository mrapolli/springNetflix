sudo rm src/main/docker/customer-service-0.0.1-SNAPSHOT.jar
sudo cp target/customer-service-0.0.1-SNAPSHOT.jar src/main/docker/customer-service-0.0.1-SNAPSHOT.jar
sudo docker rmi bidonmegale/service-machine
sudo docker build -t bidonmegale/service-machine src/main/docker
sudo docker login
sudo docker tag bidonmegale/service-machine bidonmegale/service-machine:latest
sudo docker push bidonmegale/service-machine:latest

