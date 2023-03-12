sudo apt update
sudo apt install docker-compose

mkdir ~/odoo
cd ~/odoo

echo "version: '3'
services:
  odoo:
    image: odoo:15.0
    env_file: .env
    depends_on:
      - postgres
    ports:
      - "127.0.0.1:8069:8069"
    volumes:
      - data:/var/lib/odoo
  postgres:
    image: postgres:13
    env_file: .env
    volumes:
      - db:/var/lib/postgresql/data/pgdata
      
volumes:
  data:
  db:" > docker-compose.yml
  
echo "POSTGRES_DB=postgres
POSTGRES_PASSWORD=CHANGEME
POSTGRES_USER=odoo
PGDATA=/var/lib/postgresql/data/pgdata

# odoo environment variables
HOST=postgres
USER=odoo
PASSWORD=CHANGEME" > .env

openssl rand -base64 30

sudo docker-compose up -d
