-- wrap in transaction to ensure Docker flag always visible
BEGIN;

-- add Docker flag to node metadata
UPDATE pg_dist_node_metadata SET metadata=jsonb_insert(metadata, '{docker}', 'true');

-- user:
CREATE ROLE citus WITH superuser createrole createdb LOGIN IN ROLE pg_monitor;

-- database:
ALTER DATABASE citus SET citus.shard_replication_factor = 1;
ALTER DATABASE citus OWNER TO citus;

-- extensions:
CREATE EXTENSION IF NOT EXISTS "citus";
CREATE EXTENSION IF NOT EXISTS "pg_stat_statements";
CREATE EXTENSION IF NOT EXISTS "hstore";
CREATE EXTENSION IF NOT EXISTS "hll";
CREATE EXTENSION IF NOT EXISTS "topn";

COMMIT;
