cmake_minimum_required(VERSION 3.22.1)

project("eoncore")

add_library(
    eon_runtime
    STATIC
    runtime/runtime.cpp
    runtime/native_renderer.cpp
    runtime/native_input.cpp
    runtime/gui_bridge.cpp
    runtime/runtime_diagnostics.cpp
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
    jni_bridge.cpp
)

find_library(
    log-lib
    log
)

find_library(
    gles-lib
    GLESv2
)

target_link_libraries(
    eoncore
    PRIVATE
    eon_runtime
    ${log-lib}
    ${gles-lib}
)
