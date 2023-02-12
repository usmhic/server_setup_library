#!/bin/sh

sudo apt update -y
sudo ufw allow 80,443,3000,996,7946,4789,2377/tcp
sudo ufw allow 7946,4789,2377/udp
sudo apt install git -y
sudo apt install npm -y
sudo apt update -y
sudo git clone https://github.com/usmhic/server_setup_libary.git
cd server_setup_libary
sudo chmod +x docker.sh docker_compose.sh
./docker.sh
./docker_compose.sh
sudo docker run -p 80:80 -p 443:443 -p 3000:3000 -v /var/run/docker.sock:/var/run/docker.sock -v /captain:/captain caprover/caprover
sudo npm install -g caprover
sudo apt update -y
sleep 60s
sudo caprover serversetup
