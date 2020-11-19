#!/bin/sh -e

psql --variable=ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
  CREATE DATABASE "jesse_db";
  CREATE USER jesse_user WITH PASSWORD 'password';
  GRANT ALL PRIVILEGES ON DATABASE jesse_db to jesse_user;
  ALTER SYSTEM SET max_connections = 400;
  ALTER SYSTEM SET shared_buffers = "80MB";
EOSQL