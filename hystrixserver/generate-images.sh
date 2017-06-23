sudo rm src/main/docker/hystrix-dashboard-0.0.1-SNAPSHOT.jar
sudo cp target/hystrix-dashboard-0.0.1-SNAPSHOT.jar src/main/docker/hystrix-dashboard-0.0.1-SNAPSHOT.jar
sudo docker rmi miguelrapolli69/hystrix-machine
sudo docker build -t miguelrapolli69/hystrix-machine src/main/docker
sudo docker login
sudo docker tag miguelrapolli69/hystrix-machine miguelrapolli69/hystrix-machine:latest
sudo docker push miguelrapolli69/hystrix-machine:latest

