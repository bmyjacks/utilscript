#!/bin/sh

sudo docker run -d \
    -p 3000:3000 \
    --name=grafana \
    --mount src=grafana-storage,dst=/var/lib/grafana \
    grafana/grafana-enterprise
