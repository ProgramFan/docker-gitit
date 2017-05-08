## Dockerfile for gitit

# Use debian 9 (stretch) for gitit 0.12
FROM debian:9
MAINTAINER Zhang Yang "zyangmath@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

# install git, ssh, supervisor
RUN apt-get update && apt-get install -y \
    git gitit supervisor libghc-zlib-dev

RUN echo "root:yangzhang" | chpasswd

VOLUME ["/data/gitit"]
WORKDIR /data/gitit

ADD . /data/gitit

EXPOSE 7500
ENTRYPOINT ["/data/gitit/docker-entrypoint.sh"]
