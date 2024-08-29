#!/bin/bash

current_dir=$(basename "$PWD")

echo "Argument: $1"

if [ "$1" = "c" ]; then
    echo "Creating build directory..."
    mkdir -p build
elif [ "$1" = "r" ]; then
    echo "Recreating build directory..."
    rm -rf build
    mkdir -p build
elif [ "$1" = "f" ]; then
    echo "Forcing CMake configuration..."
    force_cmake=true
else
    force_cmake=false
fi

compile() {
    if [ "$force_cmake" = true ] || [ ! -f "Makefile" ]; then
        echo "Running CMake and Make..."
        cmake -DCMAKE_BUILD_TYPE=Release .. && make -j
    else
        echo "Running Make..."
        make -j
    fi
}

if [ "$current_dir" = "build" ]; then
    echo "Already in build directory..."
    compile
    cd ..
else
    if [ -d "build" ]; then
        echo "Entering build directory..."
        cd build
        compile
        cd ..
    fi
fi

echo "Build process completed."
