#
# Python3-falsk Dockerfile
#
#

# Pull base image.
FROM 192.168.12.84/basic

ADD requirement.txt /data/requirement.txt
# Install Python3.
RUN \
  apt-get update && \
  apt-get install -y python3-dev python3-pip && \
  rm -rf /var/lib/apt/lists/*

# Install flask
RUN pip3 install -r /data/requirement.txt

VOLUME ['/data']

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["/bin/bash"]
