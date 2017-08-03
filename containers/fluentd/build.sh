#!/bin/bash

ACCT=${ACCT:-husseingalal}
VERSION=0.1.1

docker build -t $ACCT/fluentd-influxdb:$VERSION .
docker push $ACCT/fluentd-influxdb:$VERSION
