cmake_minimum_required(VERSION 3.10.0)
project(TestTemplate VERSION 0.1.0 LANGUAGES C CXX)


include(cmake/conf.cmake)

add_executable(TestTemplate main.cpp test_simple.cpp)

