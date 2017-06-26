This is a fork of the spotify/docker-kafka instance with modifications to allow
setup of a Kafka cluster easily.


Kafka in Docker
===

This repository provides everything you need to run Kafka in Docker.

Run
---

Expected environment variables:
 
    ADVERTISED_HOST
        Hostname of machine running the docker container, so zookeeper holds a correct reference.
    BROKER_ID
        The ID to give the Kafka broker.
    ZK_SERVERS
        Comma separated list of ZK servers to link together. Must be 3+, or only one
    ZK_ID
	The ID to give the zookeeper instance.

Miscellaneous
---

View the script run-kafka-zk.sh for an example on how to run the container.
