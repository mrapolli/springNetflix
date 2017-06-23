sudo rm src/main/docker/zuul-server-0.0.1-SNAPSHOT.jar
sudo cp target/zuul-server-0.0.1-SNAPSHOT.jar src/main/docker/zuul-server-0.0.1-SNAPSHOT.jar
sudo docker rmi miguelrapolli69/zuul-machine
sudo docker build -t miguelrapolli69/zuul-machine src/main/docker
sudo docker login
sudo docker tag miguelrapolli69/zuul-machine miguelrapolli69/zuul-machine:latest
sudo docker push miguelrapolli69/zuul-machine:latest

