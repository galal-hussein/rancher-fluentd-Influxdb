#!/bin/bash

ACCT=${ACCT:-husseingalal}
VERSION=dev

docker build -t $ACCT/fluentd-influxdb:$VERSION .
docker push $ACCT/fluentd-influxdb:$VERSION
