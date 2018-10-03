#!/bin/bash
echo "Starting RD-Connect Finder!"

. defaultvar.sh

echo "Wait for DB server to be ready"
/opt/scripts/waitforit.sh "${DATABASE_HOST}:${DATABASE_PORT}"

service liferay start

tail -f /opt/liferay/tomcat-7.0.42/logs/catalina.out