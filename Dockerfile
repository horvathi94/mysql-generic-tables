FROM mysql:8.0

COPY ./scripts /docker-entrypoint-initdb.d
RUN rm /docker-entrypoint-initdb.d/*.sql
