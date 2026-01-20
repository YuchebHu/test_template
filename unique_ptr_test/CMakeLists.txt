add_library(unique_ptr_test)

target_sources(unique_ptr_test PRIVATE test_combination.cpp)

target_include_directories(unique_ptr_test PUBLIC ${CMAKE_CURRENT_LIST_DIR})
