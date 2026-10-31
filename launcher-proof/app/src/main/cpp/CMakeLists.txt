cmake_minimum_required(VERSION 3.22.1)

project("proofnative")

add_library(
    proofnative
    SHARED
    native-lib.cpp
)

find_library(
    log-lib
    log
)

target_link_libraries(
    proofnative
    PRIVATE
    ${log-lib}
)
