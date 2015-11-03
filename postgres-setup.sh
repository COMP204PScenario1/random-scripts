#!/usr/bin/env bash

sudo postgres-setup initdb;
sudo systemctl start postgres;
sudo bash -c 'psql -c \'CREATE USER localuser; CREATE DATABASE localuser\'';