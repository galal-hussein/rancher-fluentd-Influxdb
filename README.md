# Rancher Fluentd InfluxDB Stack

This stack consists of three components:

- Fluentd.
- InfluxDB.
- [Rancher Log Dashboard](https://github.com/galal-hussein/rancher-log-dashboard).

## Usage

The stack is designed to store historic logs for infrastructure stacks in Rancher environment, First deploy the stack from the UI or using rancher cli:

```
> git clone https://github.com/galal-hussein/rancher-fluentd-Influxdb.git
> cd rancher-fluentd-Influxdb
> rancher up -d --stack infraLogs
```

Then you should upgrade the infra stacks to to use the `fluentd` log driver with the right tag:

- ipsec: `tag=ipsec`
- healthcheck: `tag=healthcheck`
- network-services: `tag=network`
- scheduler: `tag=scheduler`

After upgrading the infra stacks navigate to the dashboard on port 5000:

![example](img/example.png)
