#!/usr/bin/env bash

DB_HOSTNAME=$JTRAVEL_PSQLP01_SERVER_HOST 
DB_NAME=${JTRAVEL_ECMS_DB}
DB_USER=${JTRAVEL_PSQL_DB_USER}
DB_PASSWORD=${JTRAVEL_PSQL_DB_PWORD}  

if [ "$(PGPASSWORD=$DB_PASSWORD psql -h $DB_HOSTNAME -d postgres -U $DB_USER -tAc "SELECT 1 FROM pg_database WHERE datname='$DB_NAME'" )" = '1' ]
then
    echo "Database already exists"
else
    PGPASSWORD=$DB_PASSWORD psql -h $DB_HOSTNAME -d postgres -U $DB_USER -tAc "CREATE DATABASE \""$DB_NAME"\";" 
fi