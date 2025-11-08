add_executable(google_test)
target_sources(google_test PRIVATE google_test.cpp)
target_link_libraries(google_test PRIVATE GTest::gtest_main)

include(googletest)
gtest_discover_tests(google_test)