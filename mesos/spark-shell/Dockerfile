# Spark
FROM rogaha/mesos-base:0.18.2

MAINTAINER Roberto G. Hashioka "roberto_hashioka@hotmail.com"

ADD files /root/spark_shell_files

# Add the entrypoint script for the master
ENTRYPOINT ["/root/spark_shell_files/default_cmd"]
