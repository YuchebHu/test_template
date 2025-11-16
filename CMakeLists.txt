cmake_minimum_required(VERSION 3.10.0)
cmake_policy(SET CMP0091 NEW)
project(TestTemplate VERSION 0.1.0 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

if (NOT WIN32)
  include(cmake/conf.cmake)
endif()
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Shared object support is currently NOT working on Windows
option(BUILD_SHARED_LIBS "Build shared libraries" OFF)

enable_testing()

add_subdirectory(extern EXCLUDE_FROM_ALL)
add_subdirectory(learning)
add_executable(TestTemplate main.cpp test_simple.cpp)

add_subdirectory(tests)


