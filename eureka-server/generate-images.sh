sudo rm src/main/docker/netflixoss-eureka-0.0.1-SNAPSHOT.jar
sudo cp target/netflixoss-eureka-0.0.1-SNAPSHOT.jar src/main/docker/netflixoss-eureka-0.0.1-SNAPSHOT.jar
sudo docker rmi miguelrapolli69/eukica-machine
sudo docker build -t miguelrapolli69/eukica-machine src/main/docker
sudo docker login
sudo docker tag miguelrapolli69/eukica-machine miguelrapolli69/eukica-machine:latest
sudo docker push miguelrapolli69/eukica-machine:latest

