cmake_minimum_required(VERSION 3.10.0)
project(TestTemplate VERSION 0.1.0 LANGUAGES C CXX)


option(COVERAGE "Enable code coverage analysis" ON)

message(STATUS "CMAKE_BUILD_TYPE: ${CMAKE_BUILD_TYPE}")

if (COVERAGE AND CMAKE_BUILD_TYPE STREQUAL "Debug") 
  add_compile_options(
    -fprofile-arcs
    -ftest-coverage
    -fPIC
  )
  add_link_options(
    -fprofile-arcs
    -ftest-coverage
  )
elseif (COVERAGE)
  message(WARNING "Coverage requires Debug build type! Use -DCMAKE_BUILD_TYPE=Debug")
  set(COVERAGE OFF)
endif()

add_executable(TestTemplate main.cpp test_simple.cpp)

