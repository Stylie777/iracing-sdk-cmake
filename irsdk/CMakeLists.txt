# Copyright Jack Styles (stylie777) 2023
# License: 

add_library(irsdk-includes INTERFACE)

target_include_directories(irsdk-includes
    INTERFACE
    ${CMAKE_CURRENT_SOURCE_DIR}
)

add_library(irsdk-client
    irsdk_client.cpp
)

target_link_libraries(irsdk-client
    irsdk-includes
)

add_library(irsdk-diskclient
    irsdk_diskclient.cpp
)

target_link_libraries(irsdk-diskclient
    irsdk-includes
)

add_library(irsdk-utils
    irsdk_utils.cpp
)

target_link_libraries(irsdk-utils
    irsdk-includes
)

add_library(irsdk-yaml-parser
    yaml_parser.cpp
)

target_link_libraries(irsdk-yaml-parser
    irsdk-includes
)

add_subdirectory(irsdk_dumpSetup)