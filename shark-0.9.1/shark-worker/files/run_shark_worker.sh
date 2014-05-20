#!/bin/bash
. /opt/shark-0.9.1/conf/shark-env.sh
export PATH=$PATH:$SCALA_HOME/bin
export CLASSPATH=$CLASSPATH:$SCALA_HOME/lib/scala-library.jar
/opt/spark-0.9.1/bin/spark-class org.apache.spark.deploy.worker.Worker spark://master:7077
