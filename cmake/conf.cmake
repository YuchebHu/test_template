if(CMAKE_BUILD_TYPE STREQUAL "Debug")
  add_compile_options(-fprofile-arcs -ftest-coverage -fPIC)
  add_link_options(-fprofile-arcs -ftest-coverage)

  add_custom_target(
    RunForCoverage
    COMMAND $<TARGET_FILE:${PROJECT_NAME}>
    DEPENDS ${PROJECT_NAME}
    COMMENT "Running program to generate coverage data")

  add_custom_command(
    OUTPUT ${CMAKE_BINARY_DIR}/coverage_report
    COMMAND ${CMAKE_COMMAND} -E make_directory
            ${CMAKE_BINARY_DIR}/coverage_report
    COMMENT "Creating coverage report directory")

  set(GCOV_TOOL_ARGS "")
  set(GCOV_COMMAND "")
  if(CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
    set(GCOV_COMMAND "--gcov-executable" "llvm-cov gcov")
  endif()

  add_custom_target(
    Coverage
    DEPENDS ${CMAKE_BINARY_DIR}/coverage_report RunForCoverage
    COMMAND
      gcovr -r ${CMAKE_SOURCE_DIR} ${GCOV_COMMAND} --exclude  ".*/extern/.*"
      --html-details -o ${CMAKE_BINARY_DIR}/coverage_report/index.html --lcov
      ${CMAKE_BINARY_DIR}/coverage_report/lcov.info
    WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
    VERBATIM
    )

endif()
