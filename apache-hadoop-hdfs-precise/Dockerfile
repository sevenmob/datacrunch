# Base Ubuntu Precise 12.04 LTS image
#
FROM ubuntu:precise
MAINTAINER Roberto G. Hashioka "roberto_hashioka@hotmail.com"

# Setup a volume for data
VOLUME ["/data"]

# Set correct source list
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list

# Install tzdata-java
ADD https://launchpad.net/ubuntu/+source/tzdata/2013g-0ubuntu0.12.04/+build/5084922/+files/tzdata-java_2013g-0ubuntu0.12.04_all.deb /root/
RUN dpkg -i /root/tzdata-java_2013g-0ubuntu0.12.04_all.deb && rm /root/tzdata-java_2013g-0ubuntu0.12.04_all.deb

# install a few other useful packages plus Open Jdk 7
RUN apt-get update && apt-get upgrade -y && apt-get install -y less openjdk-7-jre-headless net-tools vim-tiny sudo openssh-server iputils-ping 

# Install Hadoop
ADD http://mirror.sdunix.com/apache/hadoop/common/hadoop-1.2.1/hadoop_1.2.1-1_x86_64.deb /root/
RUN dpkg -i /root/hadoop_1.2.1-1_x86_64.deb && rm /root/hadoop_1.2.1-1_x86_64.deb

# Docker messes up /etc/hosts and adds two entries for 127.0.0.1
# we try to recover from that by giving /etc/resolv.conf and therefore
# the nameserver priority
RUN sed -i s/"files dns"/"dns files"/ /etc/nsswitch.conf

# add Hadoop config file templates
ADD files /root/hadoop_files

# Set JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
