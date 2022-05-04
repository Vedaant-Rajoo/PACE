FROM ubuntu:focal

LABEL maintainer="Vedaant" \
    description="A container for running our Circuit Verification Engine. " \
    version="0.1.0"

RUN apt-get update -y

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