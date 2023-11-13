<!-- Copyright Jack Styles (stylie777) 2023
License: GPL V3 -->

# iRacing SDK CMake

This repository is the home of the iRacing SDK with CMake Support. This enables the iRacing SDK to be built using command line toolchains, rather than Microsoft Visual Studio, also enabling development on Unix based Operating Systems such as MacOS and Linux.

I created this project for my own personal use, but wanted to share this with the rest of the community for all to use. This will enable those who are not familiar (such as myself) with Visual Studio to still develop and build applications to support their iRacing addiction.

This README details how you can integrate this implementation into your iRacing project that is built using CMake.

This project is currently based off version 1.15 of the iRacing SDK. As updates to the SDK are provided, this project will be updated.

****

# Building the iRacing SDK
This project is written for use with the [Mingw-W64][mingw-w64-homepage] toolchain which is available for Windows, MacOS (via MacPorts) and Linux systems. I will provide instructions for MacOS and Ubuntu for building this project with Mingw-W64.

Visual Studio's toolchain is supported on Windows, allowing development with CMake on Windows systems. Minimal support will be provided for this as this project is designed to provide a Unix development environment for the iRacing SDK. 

The Operating System quoted in brackets is the OS that has been tested for this project, other versions of Linux and MacOS that support Mingw-W64 will work.

## Windows (Windows 11)

### Configure

* Using Visual Studio Toolchain
```bash
cmake -S . -B build
```

### Build

```bash
cmake --build build
```

## MacOS (MacOS 14 Sonoma)

### Configure

For MacOS, Mingw-W64 is the only option of Toolchain

```bash
cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=toolchain/mingw-w64.cmake -GNinja
```
### Build

* `-GNinja` is optional, `make` is also supported as the build system.

```bash
cmake --build build/
```

## Linux (Ubuntu 22.04 AArch64 LTS)

### Configure

For Linux, Mingw-W64 is the only option of Toolchain

```bash
cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=toolchain/mingw-w64.cmake -GNinja
```

* `-GNinja` is optional, `make` is also supported as the build system.

### Build

```bash
cmake --build build/
```

**Note**

The header file, `windows.h` will need to be included as `#include <windows.h>` when working on Linux  Mingw-W64 cannot recognise when the header file is included as `<Windows.h>`.

****

# Using this project

This project can be included using two differnet methods:

## CMake FetchContent

**COMING SOON**

## Git Submodule

1. Add the submodule to your repo
```git
git submodule add https://github.com/Stylie777/iracing-sdk-cmake.git
```
2. Commit this to your repository
```git
git add .gitmodules iracing-sdk-cmake
git commit
```

The subdirectory then needs to be included in your top level CMakeLists.txt file for your project as so:
```cmake
add_subdirectory(iracing-sdk-cmake)
```

When configuring CMake, ensure you give the correct path to the CMake toolchain file when using Linux or MacOS
```bash
cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=iracing-sdk-cmake/toolchain/mingw-w64.cmake -GNinja
```

****

# Modifications made to iRacing SDK
1. Casting in `irsdk/irsdk_utils.cpp:341`. This fixes an ambigious overload, this is picked up as an error in Mingw-W64
1. All includes of `#include <Windows.h>` have been changed to `#include <windows.h>`. This provides compatibility within Ubuntu 22.04

[mingw-w64-homepage]: https://www.mingw-w64.org
