#!/bin/bash
export LD_LIBRARY_PATH=/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/amd64/server

# Start mesos master slave
cd /usr/local/sbin && ./mesos-slave --master=zk://$3:2181/mesos --log_dir=/tmp/mesos/logs --ip=$2 --hadoop_home=/usr
