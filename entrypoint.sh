#!/bin/bash
set -e

INFLUXDB_HOST=${INFLUXDB_HOST:-influx}
INFLUXDB_PORT=${INFLUXDB_PORT:-8086}
INFLUXDB_USER=${INFLUXDB_USER:-telegraf}

sed -i "s/influx:8086/$INFLUXDB_HOST:$INFLUXDB_PORT/g;
  s/username = \"telegraf\"/username = \"$INFLUXDB_USER\"/g;
  s/password = \"influxpass\"/password = \"$INFLUXDB_PASS\"/g" \
	/etc/telegraf/telegraf.conf

if [ "${1:0:1}" = '-' ]; then
    set -- telegraf "$@"
fi

exec "$@"

