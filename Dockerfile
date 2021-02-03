FROM citusdata/citus:9.5.2

COPY 100-local-citus.sql /docker-entrypoint-initdb.d/
