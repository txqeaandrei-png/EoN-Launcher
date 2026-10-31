cmake_minimum_required(VERSION 3.22.1)

project("eoncore")

add_library(
    eon_runtime
    STATIC
    runtime/runtime.cpp
)

target_include_directories(
    eon_runtime
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

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
    eon_runtime
    ${log-lib}
)
