FROM citusdata/citus:9.1.1

COPY 100-local-citus.sql /docker-entrypoint-initdb.d/
