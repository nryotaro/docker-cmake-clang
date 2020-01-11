FROM debian:10
WORKDIR /root
RUN apt-get update && \
    apt-get install -y cmake clang git curl libssl-dev g++ && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    curl -L https://github.com/Kitware/CMake/releases/download/v3.16.2/cmake-3.16.2.tar.gz -o cmake.tar.gz && \
    tar xvzf cmake.tar.gz && \
    cd cmake-3.16.2 && \
    ./bootstrap && \
    make && \
    make install && \
    cd /root && \
    rm -rf cmake-3.16.2 cmake.tar.gz
WORKDIR /

