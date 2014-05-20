# Base Ubuntu Precise 12.04 LTS image
#
FROM rogaha/shark-base:0.9.1

MAINTAINER Roberto G. Hashioka "roberto_hashioka@hotmail.com"

# Mesos
RUN apt-get update
RUN apt-get install -y zookeeperd curl
RUN curl -sSfL http://downloads.mesosphere.io/master/ubuntu/12.04/mesos_0.18.2_amd64.deb --output /tmp/mesos.deb
RUN dpkg -i /tmp/mesos.deb && rm /tmp/mesos.deb

# Fix issue with libjvm.so
RUN ln -sf /usr/lib/jvm/java-7-openjdk-amd64/jre/lib/amd64/server/libjvm.so /usr/lib/libjvm.so

ADD files /root/mesos_files





