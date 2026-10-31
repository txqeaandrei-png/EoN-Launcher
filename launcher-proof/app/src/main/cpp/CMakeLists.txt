cmake_minimum_required(VERSION 3.22.1)

project("eoncore")

add_library(
    eoncore
    SHARED
    native-lib.cpp
)

find_library(
    log-lib
    log
)

target_link_libraries(
    eoncore
    PRIVATE
    ${log-lib}
)
