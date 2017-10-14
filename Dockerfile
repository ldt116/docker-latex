FROM ubuntu:xenial
MAINTAINER Guus Kuiper

RUN apt-get update -q && apt-get install -qy --no-install-recommends \
            texlive-full \
            gnuplot \
            build-essential \
            git \
            curl wget\
    &&  rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
