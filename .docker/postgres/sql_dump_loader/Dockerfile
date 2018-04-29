FROM postgres:9.5

# Copy to autoload dump.sql
COPY dump.sql /docker-entrypoint-initdb.d/

COPY ./docker-entrypoint.sh /docker-entrypoint.sh
