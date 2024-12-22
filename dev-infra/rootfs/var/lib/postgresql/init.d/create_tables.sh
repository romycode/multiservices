#!/usr/bin/env bash

set -e

psql -v ON_ERROR_STOP=1                                 \
    --username "$POSTGRES_USER"                         \
    --dbname "$POSTGRES_DB"                             \
    <<-EOSQL
    	CREATE USER qc_user;
    	CREATE DATABASE quality_control;
    	GRANT ALL PRIVILEGES ON DATABASE quality_control TO qc_user;
	EOSQL
