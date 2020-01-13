# docker-cmake-clang

A Docker image that provides cmake, make, and clang.

## Pull
Pull the image from the registry.

    docker pull nryotaro/clangcmake

## Build
You can build a Docker image tagged with <TAG> as below.

    make build TAG=<TAG>

## Example Project

[at_c](https://github.com/nryotaro/at_c), which is a repository for solutions to problems listed on At Coder, uses the image for continuous integration.
