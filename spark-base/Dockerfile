# Spark 0.9.1
#
# Use CDH4 4.4.0 as a base
FROM mesos

MAINTAINER Roberto Gandolfo Hashioka

ENV SCALA_VERSION 2.11.0
ENV SPARK_VERSION 0.9.1
ENV CDH_VERSION cdh4
ENV SCALA_HOME /opt/scala-$SCALA_VERSION
ENV SPARK_HOME /opt/spark-$SPARK_VERSION
ENV PATH $SPARK_HOME:$SCALA_HOME/bin:$PATH

# Install Scala
ADD http://www.scala-lang.org/files/archive/scala-$SCALA_VERSION.tgz /
RUN (cd / && gunzip < scala-$SCALA_VERSION.tgz)|(cd /opt && tar -xvf -)
RUN rm /scala-$SCALA_VERSION.tgz

# Install Spark
WORKDIR /tmp
RUN curl -O http://d3kbcqa49mib13.cloudfront.net/spark-$SPARK_VERSION-bin-$CDH_VERSION.tgz
RUN tar -xvf spark-$SPARK_VERSION-bin-$CDH_VERSION.tgz
RUN yum install -y -q git openjdk-7-jdk
WORKDIR /tmp/spark-$SPARK_VERSION-bin-$CDH_VERSION
ENV SPARK_HADOOP_VERSION 2.0.0-cdh4.6.0
RUN sbt/sbt clean assembly
 
