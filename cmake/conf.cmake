if (CMAKE_BUILD_TYPE STREQUAL "Debug") 
  add_compile_options(
    -fprofile-arcs
    -ftest-coverage
    -fPIC
  )
  add_link_options(
    -fprofile-arcs
    -ftest-coverage
  )
  set(GCOV_TOOL_ARGS "")
  if(CMAKE_CXX_COMPILER_ID STREQUAL "Clang") 
    set(GCOV_TOOL_ARGS "--gcov-tool" "${CMAKE_SOURCE_DIR}/scripts/llvm-gcov.sh")
  endif()
  MESSAGE(STATUS "GCOV_TOOL_ARGS: ${GCOV_TOOL_ARGS}")
  add_custom_command(
    OUTPUT ${CMAKE_BINARY_DIR}/lcov_report
    COMMAND ${CMAKE_COMMAND} -E make_directory ${CMAKE_BINARY_DIR}/lcov_report
    COMMENT "Creating coverage report directory"
  )

  add_custom_target(
    RunForCoverage
    COMMAND $<TARGET_FILE:${PROJECT_NAME}>
    DEPENDS ${PROJECT_NAME}
    COMMENT "Running program to generate coverage data"
  )

  add_custom_target(
    Coverage
    DEPENDS ${CMAKE_BINARY_DIR}/lcov_report RunForCoverage
    COMMAND lcov -c -d ${CMAKE_SOURCE_DIR} -b ${CMAKE_SOURCE_DIR} -o ${CMAKE_BINARY_DIR}/lcov_report/coverage.info ${GCOV_TOOL_ARGS} --no-external
    COMMAND genhtml ${CMAKE_BINARY_DIR}/lcov_report/coverage.info -o ${CMAKE_BINARY_DIR}/lcov_report --show-details --legend --branch-coverage
  )

  add_custom_target(
    CleanCoverage
    COMMAND lcov --directory ${CMAKE_BINARY_DIR} --zerocounters
    COMMAND ${CMAKE_COMMAND} -E remove_directory ${CMAKE_BINARY_DIR}/lcov_report
    COMMAND ${CMAKE_COMMAND} -E remove -f ${CMAKE_BINARY_DIR}/*.gcda
    COMMAND ${CMAKE_COMMAND} -E remove -f ${CMAKE_BINARY_DIR}/*.gcno
    COMMAND ${CMAKE_COMMAND} -E remove -f ${CMAKE_BINARY_DIR}/*.info
    COMMENT "Cleaning up coverage reports and data files"
)

endif()