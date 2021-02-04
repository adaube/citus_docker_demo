#! /bin/bash

docker run --name citus_standalone -p 5432:5432 -e POSTGRES_USER=citus -e POSTGRES_PASSWORD=citus citusdata/citus
