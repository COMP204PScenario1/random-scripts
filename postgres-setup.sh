#!/usr/bin/env bash

sudo postgresql-setup initdb;
sudo systemctl enable postgres.service;
sudo systemctl start postgres.service;
sudo bash -c "sudo -u postgres psql -c 'CREATE USER localuser; CREATE DATABASE localuser;'";