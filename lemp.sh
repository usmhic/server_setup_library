#!/bin/sh

sudo apt update -y
sudo apt upgrade -y


#nginx
yes | sudo ufw allow OpenSSH
yes | sudo ufw enable
sudo apt install -y nginx
yes | sudo ufw allow 'Nginx HTTP'
sudo apt update -y 

#mysql&php
sudo apt install -y mysql-server
sudo apt install -y php-fpm php-mysql php-mbstring php-xml php-bcmath php-cli php-curl php-zip unzip
sudo apt update -y
