#!/usr/bin/env bash

sudo postgresql-setup initdb;
sudo systemctl enable postgresql.service;
sudo systemctl start postgresql.service;
sudo bash -c "sudo -u postgres psql -c 'CREATE USER localuser; CREATE DATABASE localuser;'";
