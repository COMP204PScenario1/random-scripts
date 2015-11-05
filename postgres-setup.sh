#!/usr/bin/env bash

sudo postgresql-setup initdb;
sudo systemctl enable postgresql.service;
sudo systemctl stop postgresql.service;
sudo sed -i.bak "s/listen_addresses = 'localhost'/listen_addresses = '*'/g" /var/lib/pgsql/data/postgresql.conf;
sudo sed -i "s/#listen_addresses/listen_addresses/g" /var/lib/pgsql/data/postgresql.conf;
sudo grep 'todo_list_app' /var/lib/pgsql/data/pg_hba.conf;
if [ $? -eq 1 ]; then 
  sudo bash -c "echo 'host    all     todo_list_app         0.0.0.0/0     md5' >> /var/lib/pgsql/data/pg_hba.conf" ;
fi
sudo systemctl start postgresql.service;
sudo bash -c "sudo -u postgres createuser -dw localuser;"
sudo bash -c "sudo -u postgres psql -c 'CREATE DATABASE localuser;'";
sudo bash -c "sudo -u postgres psql -c 'DROP USER todo_list_app;'";
sudo sudo -u postgres psql -c "CREATE USER todo_list_app WITH PASSWORD 'todo_list_app' CREATEDB;"

exit 0; 
