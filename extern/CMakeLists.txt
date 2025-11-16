add_subdirectory(googletest)

set(CMAKE_POLICY_VERSION_MINIMUM 3.5)
add_subdirectory(asyncplusplus)

option(CAF_ENABLE_EXAMPLES "" OFF)
option(CAF_ENABLE_TESTING "" OFF)
add_subdirectory(actor-framework)