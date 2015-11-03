#!/usr/bin/env bash

sudo postgres-setup initdb;
sudo bash -c 'psql -c \'CREATE USER localuser; CREATE DATABASE localuser\'';