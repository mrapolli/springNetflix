sudo rm src/main/docker/hystrix-dashboard-0.0.1-SNAPSHOT.jar
sudo cp target/hystrix-dashboard-0.0.1-SNAPSHOT.jar src/main/docker/hystrix-dashboard-0.0.1-SNAPSHOT.jar
sudo docker rmi bidonmegale/hystrix-machine
sudo docker build -t bidonmegale/hystrix-machine src/main/docker
sudo docker login
sudo docker tag bidonmegale/hystrix-machine bidonmegale/hystrix-machine:latest
sudo docker push bidonmegale/hystrix-machine:latest

