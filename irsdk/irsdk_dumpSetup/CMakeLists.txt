# Copyright Jack Styles (stylie777) 2023
# License: GPL V3

add_executable(irsdk_dumpSetup
    dumpSetup.cpp
)

target_link_libraries(irsdk_dumpSetup
    irsdk-client
    irsdk-diskclient
    irsdk-utils
    irsdk-yaml-parser
    winmm
)