# iRacing SDK CMake

This repository is the home of the iRacing SDK with CMake Support. This enables the iRacing SDK to be built using command line toolchains, rather than MicrosoftVisual Studio. 

This README details how you can integrate this implementation into your iRacing project that is built using CMake.

This project is currently based off version 1.15 of the iRacing SDK. As updates to the SDK are provided, this project will be updated.

# Building the iRacing SDK
This project is written for use with the [mingw-w64][mingw-w64-homepage] toolchain which is available for Windows, MacOS (via MacPorts) and Linux systems. I will provide instructions for Windows, MacOS and Ubuntu for building this project.

## Windows

## MacOS (MacOS 14 Sonoma)

```cmake
cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=toolchain/mingw-w64.cmake -GNinja
```

* `-GNinja` is optional, `make` is also supported as the build system.

```cmake
cmake --build build/
```

## Linux (Ubuntu 22.04 LTS)

[mingw-w64-homepage]: https://www.mingw-w64.org
