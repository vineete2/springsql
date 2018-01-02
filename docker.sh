#!/usr/bin/env bash

# Don't execute this, these are the commands that have been executed in the tutorial, just as resource.
# To run the application use Docker compose.
docker run -d \
    --name demo-mysql \
    -e MYSQL_ROOT_PASSWORD=12345 \
    -e MYSQL_DATABASE=dbpedia_metrics \
    -e MYSQL_USER=dbuser \
    -e MYSQL_PASSWORD=12345 \
    mysql:latest
docker run -d \
    --name springsql \
    --link demo-mysql:mysql \
    -p 8080:8080 \
    springsql/springsql
