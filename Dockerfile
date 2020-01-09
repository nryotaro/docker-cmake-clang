FROM debian:10
RUN apt-get update && \
    apt-get install -y cmake clang && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
