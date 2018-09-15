#!/usr/bin/env bash

set -e

if [ ! -f build/build.ninja ]; then
    mkdir -p build
    pushd build
    cmake -G Ninja -DCMAKE_TOOLCHAIN_FILE=../toolchains/cc65-toolchain.cmake ..
    popd
fi

cmake --build build -- "$@"
