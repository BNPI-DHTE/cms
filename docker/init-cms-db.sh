#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-'EOSQL'

CREATE USER dhtecms
    WITH PASSWORD 'DhteCms';

CREATE DATABASE dhtecms
    WITH OWNER = dhtecms
    TEMPLATE = 'template0'
    ENCODING = 'UTF-8'
    LC_COLLATE = 'hu_HU.UTF-8'
    LC_CTYPE = 'hu_HU.UTF-8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

EOSQL