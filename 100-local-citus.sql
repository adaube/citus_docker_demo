-- user:
CREATE ROLE citus WITH superuser createrole createdb LOGIN IN ROLE pg_monitor;
-- database:
ALTER DATABASE citus OWNER TO citus;
-- extensions:
CREATE EXTENSION IF NOT EXISTS "citus";
CREATE EXTENSION IF NOT EXISTS "pg_stat_statements";
CREATE EXTENSION IF NOT EXISTS "hstore";
CREATE EXTENSION IF NOT EXISTS "hll";
CREATE EXTENSION IF NOT EXISTS "topn";
