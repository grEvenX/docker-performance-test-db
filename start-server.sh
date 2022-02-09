#!/bin/sh
docker-compose kill
docker-compose rm -f
docker-compose up pgsql-server