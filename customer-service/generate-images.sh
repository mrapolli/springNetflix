sudo rm src/main/docker/customer-service-0.0.1-SNAPSHOT.jar
sudo cp target/customer-service-0.0.1-SNAPSHOT.jar src/main/docker/customer-service-0.0.1-SNAPSHOT.jar
sudo docker rmi miguelrapolli69/service-machine
sudo docker build -t miguelrapolli69/service-machine src/main/docker
sudo docker login
sudo docker tag miguelrapolli69/service-machine miguelrapolli69/service-machine:latest
sudo docker push miguelrapolli69/service-machine:latest

