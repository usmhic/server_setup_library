#!/bin/sh

sudo apt update -y
sudo apt upgrade -y

#nodejs
sudo apt-get update -y
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm i -g yarn
sudo apt install -y zip unzip rar unrar
sudo npm install -g pm2


#nginx
sudo apt update -y
sudo apt install -y nginx
yes | sudo ufw allow ssh
yes | sudo ufw allow OpenSSH
yes | sudo ufw allow 'Nginx HTTP'
yes | sudo ufw enable
yes | sudo ufw default deny

#mysql&php
sudo apt install -y mysql-server
sudo apt install -y php-fpm php-mysql php-mbstring php-xml php-bcmath php-simplexml php-mbstring php7.4-gd php7.4-curl composer
sudo apt update -y
