#!/usr/bin/env bash

sudo postgresql-setup initdb;
sudo systemctl start postgres.service;
sudo bash -c 'psql -c \'CREATE USER localuser; CREATE DATABASE localuser\'';