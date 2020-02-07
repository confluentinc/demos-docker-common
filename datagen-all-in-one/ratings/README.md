## summary
Runs a Kafka Connect node preloaded with the [kafka-connect-datagen](https://github.com/confluentinc/kafka-connect-datagen) Connector and configured to run the Users and Ratings [quickstarts](https://github.com/confluentinc/kafka-connect-datagen/tree/master/src/main/resources) automatically.

## usage
```
docker run -p 8083:8083 -d -e "CONNECT_BOOTSTRAP_SERVERS=broker:9092" datagen-all-in-one-ratings:0.0.1
```
