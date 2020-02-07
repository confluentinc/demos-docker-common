FROM cnfldemos/kafka-connect-datagen:0.2.0-5.4.0

ENV CONNECT_REST_ADVERTISED_HOST_NAME=localhost
ENV CONNECT_REST_PORT=8083
ENV CONNECT_GROUP_ID=ratings-data-gen
ENV CONNECT_CONFIG_STORAGE_TOPIC=ratings-data-gen-configs
ENV CONNECT_CONFIG_STORAGE_REPLICATION_FACTOR=1
ENV CONNECT_OFFSET_FLUSH_INTERVAL_MS=10000
ENV CONNECT_OFFSET_STORAGE_TOPIC=docker-connect-offsets
ENV CONNECT_OFFSET_STORAGE_REPLICATION_FACTOR=1
ENV CONNECT_STATUS_STORAGE_TOPIC=docker-connect-status
ENV CONNECT_STATUS_STORAGE_REPLICATION_FACTOR=1
ENV CONNECT_KEY_CONVERTER=org.apache.kafka.connect.storage.StringConverter
ENV CONNECT_VALUE_CONVERTER=io.confluent.connect.avro.AvroConverter
ENV CONNECT_VALUE_CONVERTER_SCHEMA_REGISTRY_URL=http://schema-registry:8081
ENV CONNECT_INTERNAL_KEY_CONVERTER=org.apache.kafka.connect.json.JsonConverter
ENV CONNECT_INTERNAL_VALUE_CONVERTER=org.apache.kafka.connect.json.JsonConverter
ENV CONNECT_PLUGIN_PATH="/usr/share/java,/usr/share/confluent-hub-components"
ENV CONNECT_LOG4J_LOGGERS="org.apache.kafka.connect.runtime.rest=WARN,org.reflections=ERROR"

ADD ratings-connector-config.json .
ADD users-connector-config.json .
ADD submit-connector-config-when-ready.sh .
ADD start.sh .

ENTRYPOINT "./start.sh"

