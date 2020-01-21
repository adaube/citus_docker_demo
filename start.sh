#!/bin/bash
docker-compose -p citus up --scale worker=4 -d
