cmake_minimum_required(VERSION 3.10.0)
project(TestTemplate VERSION 0.1.0 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

include(cmake/conf.cmake)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_subdirectory(extern )

add_executable(TestTemplate main.cpp test_simple.cpp)
add_executable(cppTest main.cpp)

add_executable(google_test)
target_sources(google_test PRIVATE google_test.cpp)
target_link_libraries(google_test PRIVATE GTest::gtest_main)

enable_testing()
include(googletest)
gtest_discover_tests(google_test)


