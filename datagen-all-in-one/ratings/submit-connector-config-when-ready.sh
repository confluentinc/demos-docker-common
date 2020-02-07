#!/bin/bash

until /etc/confluent/docker/healthcheck.sh
do
  sleep 3
done

curl -X POST -H "Content-Type: application/json" --data "@ratings-connector-config.json" http://localhost:$CONNECT_REST_PORT/connectors || {
  echo "ERROR: Could not successfully submit connector. Please troubleshoot Connect."
}

curl -X POST -H "Content-Type: application/json" --data "@users-connector-config.json" http://localhost:$CONNECT_REST_PORT/connectors || {
  echo "ERROR: Could not successfully submit connector. Please troubleshoot Connect."
}
