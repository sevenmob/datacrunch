# Shark worker
FROM rogaha/shark-base:0.9.1

MAINTAINER Roberto G. Hashioka "roberto_hashioka@hotmail.com"

# Add run script
ADD files /root/shark_worker_files

# Add the entrypoint script for the worker
ENTRYPOINT ["/root/shark_worker_files/default_cmd"]
