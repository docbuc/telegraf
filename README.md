# Preconfigured telegraf docker image

Collects metrics of your system and docker.

Use environment variables to send data to influxdb

* `INFLUXDB_HOST` hostname for influxdb server
* `INFLUXDB_PORT` port for influxdb server
* `INFLUXDB_USER` username for influxdb server
* `INFLUXDB_PASS` password for influxdb server

Use this image like

```
docker run -d -v /var/run/docker.sock:/var/run/docker.sock:ro \
  -e INFLUXDB_HOST=influx.example.com -e INFLUXDB_PORT=8086 \
  -e INFLUXDB_USER=influx -e INFLUXDB_PASS=secret \
  docbuc/telegraf
```
  
