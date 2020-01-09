FROM ubuntu:18.04
RUN apt-get update && \
    apt-get install -y cmake clang git curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
# curl -L https://github.com/Kitware/CMake/releases/download/v3.16.2/cmake-3.16.2-Linux-x86_64.tar.gz -o cmake.tar.gz

