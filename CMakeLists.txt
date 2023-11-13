# Copyright Jack Styles (stylie777) 2023
# License: GPL V3

cmake_minimum_required(VERSION 3.27.7 FATAL_ERROR)
project(iracing-sdk-cmake)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include(toolchain/mingw-w64.cmake)

add_subdirectory(irsdk)