cmake_minimum_required(VERSION 3.10.0)
cmake_policy(SET CMP0091 NEW)
project(
  TestTemplate
  VERSION 0.1.0
  LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED OFF)
set(CMAKE_CXX_EXTENSIONS OFF)

include(cmake/conf.cmake)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

enable_testing()

add_subdirectory(extern EXCLUDE_FROM_ALL)
# add_subdirectory(tests)
add_subdirectory(unique_ptr_test)

add_executable(TestTemplate main.cpp test_simple.cpp)
target_link_libraries(TestTemplate PRIVATE unique_ptr_test)
