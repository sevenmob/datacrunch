# Mesos
FROM rogaha/mesos-base:0.18.2

MAINTAINER Roberto G. Hashioka "roberto_hashioka@hotmail.com"

# Setup a volume for data
#VOLUME ["/data"]

ADD files /root/mesos_master_files

# Add hdfs to the sudo group
RUN adduser hdfs sudo
RUN cp /etc/sudoers /tmp/sudoers
RUN sed -i s/") ALL"/") NOPASSWD:ALL"/ /tmp/sudoers
RUN EDITOR="cp /tmp/sudoers" visudo

CMD ["/root/mesos_master_files/default_cmd"]
