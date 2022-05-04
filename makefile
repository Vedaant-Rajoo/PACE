all: hello install libff libfqfft local

hello:
	@echo "------------- Welcome to PACE (CS525 Project) --------------------"
	@echo "------ Parallel Algorithmic Circuit correctness Engine -----------"
	@echo "------ For Evaluating Circuits in Non-Interactive ZKPs -----------"
	@echo "--------- Developers: Vedaant Rajoo & Aditya Gupta ---------------"
	@export DEBIAN_FRONTEND=noninteractive


install:
	@echo "Installing neccessary Depedencies"
	@apt-get install -y --no-install-recommends\
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
                    ca-certificates >/dev/null 2>&1 && \
    apt-get autoclean -y >/dev/null 2>&1 && \
    apt-get autoremove -y >/dev/null 2>&1 && \
    apt-get clean -y >/dev/null 2>&1 && \
    rm -rf /var/lib/apt/lists/*
	@echo " Done Installing all Dependencies"

libff:
	@echo "Installing Library for Elliptical Curves & Fields"
	@git clone https://github.com/scipr-lab/libff.git >/dev/null 2>&1; \
    cd libff; \
    git submodule init >/dev/null 2>&1 && git submodule update >/dev/null 2>&1; \
    mkdir build && cd build; \
    cmake .. -WITH_PROCPS=ON; \
    make >/dev/null 2>&1; \
    make install >/dev/null 2>&1; \
	echo "Done with this"; \
    cd ..

libfqfft:
	@echo "Installing Library for FFT Calculation"; \
	git clone https://github.com/scipr-lab/libfqfft.git >/dev/null 2>&1; \
    cd libfqfft; \
    git submodule init >/dev/null 2>&1 && git submodule update >/dev/null 2>&1; \
    mkdir build && cd build; \
    cmake .. -WITH_PROCPS=ON -DMULTICORE=ON; \
    make >/dev/null 2>&1; \
    make install >/dev/null 2>&1; \
	echo "Done with this"; \
    cd ..
local:
	@echo "------- Now we can build the PACE library ------"

docker:
	@docker build -t pace .; \
    docker run -it pace:latest

clean:
	@rm -rf libff/
	@rm -rf libfqfft/
	@rm -rf build/