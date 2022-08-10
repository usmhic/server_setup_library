#!/bin/sh

sudo apt update -y
sudo apt install -y postgresql postgresql-contrib
sudo service postgresql start
