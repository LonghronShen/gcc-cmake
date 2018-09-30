FROM ubuntu:18.04

RUN echo deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse > /etc/apt/sources.list && \
        echo deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse >> /etc/apt/sources.list && \
        echo deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse >> /etc/apt/sources.list && \
        echo deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse >> /etc/apt/sources.list && \
        apt-get update && apt-get install -y apt-transport-https build-essential python-pip && pip install -i https://pypi.tuna.tsinghua.edu.cn/simple cmake
