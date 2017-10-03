###########################################################
# Dockerfile for a VSEARCH container image
# Based on Alpine Linux
###########################################################

# Set the base image to Alpine (version 3.6)
FROM alpine:3.6

# File author
MAINTAINER Sam Nooij

# Install required packages
RUN apk add --no-cache ca-certificates
RUN update-ca-certificates
RUN apk add --no-cache wget \
    autoconf \
    automake \
    g++ \
    make

# Download and install VSEARCH (from github)
RUN wget https://github.com/torognes/vsearch/archive/v2.4.4.tar.gz
RUN tar xzf v2.4.4.tar.gz
RUN cd vsearch-2.4.4/ \
    && ./autogen.sh \
    && ./configure \
    && make \
    && make install

# Set the working directory to where the command is
WORKDIR /vsearch-2.4.4/bin/
