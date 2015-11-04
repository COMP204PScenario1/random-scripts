#!/usr/bin/env bash

sudo postgresql-setup initdb;
sudo systemctl enable postgresql.service;
sudo systemctl stop postgresql.service;
sudo sed -i.bak "s/listen_addresses = 'localhost'/listen_addresses = '*'/g" /var/lib/pgsql/data/postgresql.conf
sudo grep 'todo_list_app'
if [ $? -eq 0 ]; then 
  sudo bash -c "echo 'host    todo_list_app    all         0.0.0.0/0     md5' >> /var/lib/pgsql/data/pg_hba.conf" 
fi
sudo systemctl start postgresql.service;
sudo bash -c "sudo -u postgres psql -c 'CREATE USER localuser;'"
sudo bash -c "sudo -u postgres psql -c 'CREATE DATABASE localuser;'";
sudo bash -c "sudo -u postgres psql -c 'CREATE USER todo_list_app;'"
sudo bash -c "sudo -u postgres psql -c 'CREATE DATABASE todo_list;'";
sudo bash -c "sudo -u postgres psql -c 'ALTER USER localuser CREATEDB;'"; 
