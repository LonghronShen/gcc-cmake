FROM debian:buster-slim

ARG CMAKE_VERSION=3.16.1

WORKDIR /tmp

RUN apt update && \
    apt install -y procps build-essential ca-certificates wget curl git openssl libssl-dev zlib1g-dev libcurl4-openssl-dev && \
    apt clean && \
    wget https://github.com/Kitware/CMake/releases/download/v$CMAKE_VERSION/cmake-$CMAKE_VERSION.tar.gz && \
    tar zxvf cmake-$CMAKE_VERSION.tar.gz && \
    cd cmake-$CMAKE_VERSION && \
    ./bootstrap --system-curl --parallel=$(nproc) && \
    make -j$(nproc) && \
    make install && \
    cd /tmp && rm -rf *
