#!/bin/sh

DB_USER="strativadmin"
time docker-compose run -v $(pwd):/project --rm pgsql-client pg_restore --clean -h pgsql-server -U $DB_USER -d testdb /project/dump-08-11-21.dump