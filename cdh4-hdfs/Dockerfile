# Base CentOS image with the Cloudera namenode and datanode packages

FROM centos:centos6
MAINTAINER Roberto Gandolfo Hashioka

# Add the CDH4 repository
ADD cloudera-cdh4.repo /etc/yum.repos.d/

# Upgrade the images packages
RUN yum upgrade -y -q

# Install CDH4 hdfs
RUN yum install -y -q hadoop-hdfs-namenode hadoop-hdfs-datanode 

# Install Java and Zookeeper
RUN yum install -y -q java-1.7.0-openjdk java-1.7.0-openjdk-devel zookeeper-server

