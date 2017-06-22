sudo rm src/main/docker/zuul-server-0.0.1-SNAPSHOT.jar
sudo cp target/zuul-server-0.0.1-SNAPSHOT.jar src/main/docker/zuul-server-0.0.1-SNAPSHOT.jar
sudo docker rmi bidonmegale/zuul-machine
sudo docker build -t bidonmegale/zuul-machine src/main/docker
sudo docker login
sudo docker tag bidonmegale/zuul-machine bidonmegale/zuul-machine:latest
sudo docker push bidonmegale/zuul-machine:latest

