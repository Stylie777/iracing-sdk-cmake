# Copyright Jack Styles (stylie777) 2023
# License: 

# the name of the target operating system
set(CMAKE_SYSTEM_NAME Windows)

# which compilers to use for C and C++

set(CMAKE_C_COMPILER x86_64-w64-mingw32-gcc.exe)
set(CMAKE_CXX_COMPILER x86_64-w64-mingw32-g++.exe)
set(CMAKE_RC_COMPILER windres.exe)
set(CMAKE_AR x86_64-w64-mingw32-gcc-ar.exe)
set(CMAKE_RANLIB x86_64-w64-mingw32-gcc-ranlib.exe)
