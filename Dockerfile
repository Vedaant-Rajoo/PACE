FROM ubuntu:focal

LABEL maintainer="Vedaant" \
    description="A container for running our Circuit Verification Engine. " \
    version="0.1.0"

RUN apt-get update -y

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get install -y --no-install-recommends\
                    git \
                    curl \
                    gcc-9 \
                    g++ \
                    gnuplot-x11 \
                    libgmp3-dev \
                    libprocps-dev \
                    libboost-all-dev \
                    pkg-config \
                    libsodium-dev \
                    libssl-dev \
                    clang-10 \
                    build-essential \
                    cmake \
                    unzip \
                    tar \
                    ca-certificates && \
    apt-get autoclean && \
    apt-get autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# The first library dependency installation libff

RUN git clone https://github.com/scipr-lab/libff.git; \
    cd libff; \
    git submodule init && git submodule update; \
    mkdir build && cd build; \
    cmake .. -WITH_PROCPS=ON; \
    make; \
    make install; \
    cd ..

#The second library installation in progress

RUN git clone https://github.com/scipr-lab/libfqfft.git; \
    cd libfqfft; \
    git submodule init && git submodule update; \
    mkdir build && cd build; \
    cmake .. -WITH_PROCPS=ON -DMULTICORE=ON; \
    make; \
    make install; \
    cd ..