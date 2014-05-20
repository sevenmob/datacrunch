#!/usr/bin/env bash
. __SPARK_HOME__/conf/spark-env.sh
export SHARK_MASTER_MEM=700m
export HIVE_HOME=__HIVE_HOME__
export HIVE_CONF_DIR="$HIVE_HOME/conf"
