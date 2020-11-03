FROM postgres:12.2-alpine

ENV POSTGRES_PASSWORD="pwdpostgre"

COPY ./postgres-initdb.sh /docker-entrypoint-initdb.d/initdb.sh
