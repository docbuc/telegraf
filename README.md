# Preconfigured telegraf docker image

Collects metrics of your system and docker and post to influxdb_v2

Use environment variables to send data to influxdb

* `INFLUXDB_URL` URL for influxdb server
* `INFLUXDB_TOKEN` Token for influxdb authentication
* `INFLUXDB_BUCKET` bucket for influxdb
* `INFLUXDB_ORG` organization for influxdb

Use this image like

```
docker run -d -v /var/run/docker.sock:/var/run/docker.sock:ro \
  -e INFLUXDB_URL=https://influx.example.com \
  -e INFLUXDB_ORG=influx -e INFLUXDB_TOKEN=verylongsecret \
  -e INFLUXDB_BUCKET=telegraf \
  docbuc/telegraf
```
