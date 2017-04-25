#!/bin/bash

ACCT=${ACCT:-husseingalal}
VERSION=dev

docker build -t $ACCT/influxdb-config:$VERSION .
docker push $ACCT/influxdb-config:$VERSION
