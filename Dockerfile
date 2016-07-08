#
# Ubuntu Dockerfile
# version 1.0
#
FROM ubuntu:14.04
MAINTAINER Leo <jiangwenhua@yoyohr.com>

#Update sources.list
COPY sources.list /etc/apt/sources.list

# Install packages
RUN apt-get update \
    && DEBIAN_FRONTEND="noninteractive" \
        apt-get install -y \
        python-software-properties \
        software-properties-common \
        ca-certificates \
        curl \
        libpcre3 \
        librecode0 \
        libsqlite3-0 \
        libxml2 \
        --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*