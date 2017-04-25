#!/bin/bash

set -x

influxd &
pid="$!"

sleep 10

if [ -n $INFLUX_DATABASE ]; then
  influx -execute "CREATE DATABASE ${INFLUX_DATABASE}"
fi

if ! kill -s TERM "$pid" || ! wait "$pid"; then
			exit 1
fi

/entrypoint.sh influxd
