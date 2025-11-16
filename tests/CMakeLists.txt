add_executable(google_test)
target_sources(google_test PRIVATE google_test.cpp)
target_link_libraries(google_test PRIVATE GTest::gtest_main)

include(googletest)
gtest_discover_tests(google_test)

add_executable(async_sample async_sample.cpp)
target_link_libraries(async_sample PRIVATE Async++)


add_executable(hello_caf hello_caf.cpp)
target_link_libraries(hello_caf PRIVATE CAF::core CAF::internal)