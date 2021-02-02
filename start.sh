#!/bin/bash

export POSTGRES_PASSWORD=citus
export POSTGRES_HOST_AUTH_METHOD=md5
docker-compose -p citus up --scale worker=4 -d
