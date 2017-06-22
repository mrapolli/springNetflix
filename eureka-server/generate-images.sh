sudo rm src/main/docker/netflixoss-eureka-0.0.1-SNAPSHOT.jar
sudo cp target/netflixoss-eureka-0.0.1-SNAPSHOT.jar src/main/docker/netflixoss-eureka-0.0.1-SNAPSHOT.jar
sudo docker rmi bidonmegale/eukica-machine
sudo docker build -t bidonmegale/eukica-machine src/main/docker
sudo docker login
sudo docker tag bidonmegale/eukica-machine bidonmegale/eukica-machine:latest
sudo docker push bidonmegale/eukica-machine:latest

