#!/bin/bash

source /root/shark_files/configure_shark.sh

function create_mesos_directories() {
    create_shark_directories
    mkdir /tmp/mesos
	mkdir /tmp/mesos/logs
    chown hdfs.hdfs /tmp/mesos
	chown hdfs.hdfs /tmp/mesos/logs
}

function deploy_mesos_files() {
    deploy_shark_files
}		

function configure_mesos() {
    configure_shark $1
    sed -i s/"^export MASTER="/"#export MASTER="/ /opt/spark-$SPARK_VERSION/conf/spark-env.sh
    echo "export MASTER=zk://$1:2181/mesos" >> /opt/spark-$SPARK_VERSION/conf/spark-env.sh
	echo "export SPARK_EXECUTOR_URI=hdfs://$1:9000/tmp/spark-0.9.1-1.2.1.tgz" >> /opt/spark-$SPARK_VERSION/conf/spark-env.sh
    echo "export MESOS_NATIVE_LIBRARY=/usr/local/lib/libmesos-0.18.2.so" >> /opt/spark-$SPARK_VERSION/conf/spark-env.sh
    echo "export JAVA_LIBRARY_PATH=/usr/local/lib/libmesos-0.18.2.so" >> /opt/spark-$SPARK_VERSION/conf/spark-env.sh
}

function prepare_mesos() {
    create_mesos_directories
    deploy_mesos_files
    configure_mesos $1
}
