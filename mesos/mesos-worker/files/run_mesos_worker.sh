#!/bin/bash
export LD_LIBRARY_PATH=/usr/lib/jvm/java-7-openjdk-amd64/jre/lib/amd64/server
cd /usr/local/sbin && ./mesos-slave --master=$1 --ip=$2 --hadoop_home=$HADOOP_HOME
