add_executable(irsdk_dumpSetup
    dumpSetup.cpp
)

target_link_libraries(irsdk_dumpSetup
    irsdk-includes
    irsdk-client
    irsdk-diskclient
    irsdk-utils
    irsdk-yaml-parser
    winmm
)