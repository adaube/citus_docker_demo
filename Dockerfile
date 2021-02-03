FROM local-citus:latest

COPY 100-local-citus.sql /docker-entrypoint-initdb.d/