## Dockerfile for gitit

# Use debian 9 (stretch) for gitit 0.12
FROM debian:9
LABEL maintainer="Yang Zhang <zyangmath@gmail.com>"

# Add gitit packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
    locales git gitit libghc-filestore-data \
    supervisor gosu

# Use an UTF-8 locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en

# Basic system settings
RUN echo "root:123456" | chpasswd
