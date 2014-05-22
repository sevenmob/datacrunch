#!/bin/bash
export LD_LIBRARY_PATH=/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/amd64/server

# Start zookeeper
cd /usr/share/zookeeper/bin/ && sudo ./zkServer.sh start

# Start mesos master
cd /usr/local/sbin && ./mesos-master --ip=$1 --log_dir=/tmp/mesos/logs --cluster=sevenmob --zk=zk://$1:2181/mesos
