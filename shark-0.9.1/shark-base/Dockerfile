# Spark 0.9.1, Shark 0.9.1
#
# Use spark-base as base
FROM rogaha/spark-base:0.9.1

MAINTAINER Roberto G. Hashioka "roberto_hashioka@hotmail.com"

ENV SPARK_VERSION 0.9.1
ENV SHARK_VERSION 0.9.1
ENV HIVE_VERSION 0.9.0

# Install Hive
ADD http://archive.apache.org/dist/hive/hive-$HIVE_VERSION/hive-$HIVE_VERSION-bin.tar.gz /
RUN (cd / && tar -xzvf hive-$HIVE_VERSION-bin.tar.gz -C /opt && rm /hive-$HIVE_VERSION-bin.tar.gz)

# Install Shark
ADD https://s3.amazonaws.com/spark-related-packages/shark-${SHARK_VERSION}-bin-hadoop1.tgz /
RUN (cd / && gunzip < shark-${SHARK_VERSION}-bin-hadoop1.tgz)|(cd /opt && tar -xvf -)
RUN (ln -s /opt/shark-${SHARK_VERSION}-bin-hadoop1 /opt/shark-${SHARK_VERSION} && rm /shark-${SHARK_VERSION}-bin-hadoop1.tgz)


# Add Shark config files and configure script
ADD files /root/shark_files

