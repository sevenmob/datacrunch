FROM centos-cdh4-hdfs:4.4.0 
MAINTAINER Roberto Gandolfo Hashioka

# Set up zookeeper
RUN service zookeeper-server init
RUN echo 1 | tee -a /var/lib/zookeeper/myid >/dev/null

# Install Mesos Package
RUN curl -sSfL http://downloads.mesosphere.io/master/centos/6/mesos_0.18.0_x86_64.rpm --output /tmp/mesos.rpm
RUN yum localinstall -y -q /tmp/mesos.rpm

# Fix libjvm.so path issue
RUN ln -s /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.55.x86_64/jre/lib/amd64/server/libjvm.so /usr/lib/libjvm.so
ENV LD_LIBRARY_PATH /usr/lib/
