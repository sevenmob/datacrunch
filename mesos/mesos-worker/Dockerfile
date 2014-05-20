# Mesos
FROM rogaha/mesos-base:0.18.2

MAINTAINER Roberto G. Hashioka "roberto_hashioka@hotmail.com"

# Setup a volume for data
#VOLUME ["/data"]

ADD files /root/mesos_worker_files

# Add the entrypoint script for the master
CMD ["-h"]
ENTRYPOINT ["/root/mesos_worker_files/default_cmd"]
