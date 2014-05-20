# Spark
FROM rogaha/spark-base:0.9.1
MAINTAINER Roberto G. Hashioka "roberto_hashioka@hotmail.com"

# Instead of using a random port, bind the worker to a specific port
ENV SPARK_WORKER_PORT 8888
EXPOSE 8888

ADD files /root/spark_worker_files

# Add the entrypoint script for the master
CMD ["-h"]
ENTRYPOINT ["/root/spark_worker_files/default_cmd"]
