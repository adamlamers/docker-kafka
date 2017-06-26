This is a fork of the spotify/docker-kafka instance with modifications to allow
setup of a Kafka cluster easily.


Kafka in Docker
===

This repository provides everything you need to run Kafka in Docker.

Run
---

Expected environment variables:
 
    ADVERTISED_HOST
        Hostname of machine running the docker container, so zookeeper holds a correct reference. (string)
    BROKER_ID
        The ID to give the Kafka broker. (int)
    ZK_SERVERS
        Comma separated list of ZK servers to link together. Must be 3+, or only one
        (e.g. ZK_SERVERS="server-1,server-2,server-3")
    ZK_ID
	The ID to give the zookeeper instance. (int)

Additional environment variables:
    LOG_RETENTION_HOURS
        The number of hours to keep a log file before deleting in (in hours) (int)
    LOG_RETENTION_BYTES
        The maximum size of the log before deleting it. (int)
    NUM_PARTITIONS
        The default number of log pertitions per topic. (int)
    AUTO_CREATE_TOPICS
        Allow kafka to automatically create topics on data insertion (true/false)

Miscellaneous
---

View the script run-kafka-zk.sh for an example on how to run the container.
