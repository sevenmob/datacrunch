# Spark
FROM rogaha/spark-base:0.9.1
MAINTAINER Roberto G. Hashioka "roberto_hashioka@hotmail.com"

# Expose TCP ports 7077 8080
EXPOSE 7077 8080

ADD files /root/spark_master_files

CMD ["/root/spark_master_files/default_cmd"]
