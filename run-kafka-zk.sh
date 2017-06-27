if [ -z "$1" ]; then
    echo "usage: $0 <node_id>"
    exit
fi

export ADVERTISED_HOST=$(hostname)
export BROKER_ID=$1
export ZK_SERVERS="kafka-test-1,kafka-test-2,kafka-test-3"
export ZK_ID=$1
export NUM_PARTITIONS=105
export DEFAULT_REPLICATION_FACTOR=2
KAFKA_DATA_DIR="/app/kafka-data"

mkdir -p $KAFKA_DATA_DIR

docker run -d \
	-e ADVERTISED_HOST \
	-e BROKER_ID \
	-e ZK_SERVERS \
	-e ZK_ID \
	-e NUM_PARTITIONS \
	-e DEFAULT_REPLICATION_FACTOR \
	-p 2181:2181 \
	-p 2888:2888 \
	-p 3888:3888 \
	-p 9092:9092 \
	-v $KAFKA_DATA_DIR:/tmp/kafka-logs \
	adamlamers/docker-kafka


