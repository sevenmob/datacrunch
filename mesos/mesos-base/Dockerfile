# Base Ubuntu Precise 12.04 LTS image
#
FROM rogaha/shark-base:0.9.1

MAINTAINER Roberto G. Hashioka "roberto_hashioka@hotmail.com"

ENV SPARK_VERSION 0.9.1
ENV HADOOP_VERSION 1.2.1

# Mesos
RUN apt-get update
RUN apt-get install -y zookeeperd curl
RUN curl -sSfL http://downloads.mesosphere.io/master/ubuntu/12.04/mesos_0.18.2_amd64.deb --output /tmp/mesos.deb
RUN dpkg -i /tmp/mesos.deb && rm /tmp/mesos.deb

# Install Git and Java (Spark dependency)
RUN apt-get install -y aptitude
RUN aptitude install -y perl-base=5.14.2-6ubuntu2
RUN aptitude install -y git
RUN aptitude install -y python2.7-minimal=2.7.3-0ubuntu3
RUN aptitude install -y python-minimal=2.7.3-0ubuntu2
RUN aptitude install -y openjdk-7-jdk


# Build and Pack Spark
RUN cd /opt/spark-$SPARK_VERSION && sbt/sbt clean assembly
RUN cd /opt/spark-$SPARK_VERSION && ./make-distribution.sh
RUN cd /opt/spark-$SPARK_VERSION && mv dist spark-$SPARK_VERSION-$HADOOP_VERSION
RUN cd /opt/spark-$SPARK_VERSION && tar czf spark-$SPARK_VERSION-$HADOOP_VERSION.tgz spark-$SPARK_VERSION-$HADOOP_VERSION
RUN cd /opt/spark-$SPARK_VERSION && rm -rf spark-$SPARK_VERSION-$HADOOP_VERSION

ADD files /root/mesos_files





