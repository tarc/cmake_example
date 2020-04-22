cmake_minimum_required (VERSION 3.17.0)

project(cmake_test VERSION 0.1.0)

file(GLOB SRC_FILES ${PROJECT_SOURCE_DIR}/*.cpp)
file(GLOB_RECURSE SRC_FILES_LIBS ${PROJECT_SOURCE_DIR}/cpp-libs/pugixml/src/*.cpp)

file(GLOB INCLUDE_DIRS ${PROJECT_SOURCE_DIR}/cpp-libs/*/src/)

message(STATUS "INCLUDE_DIRS: ${INCLUDE_DIRS}")

message(STATUS "SRC_FILES: ${SRC_FILES}")

message(STATUS "SRC_FILES_LIBS: ${SRC_FILES_LIBS}")

add_executable(cmake_test ${SRC_FILES} ${SRC_FILES_LIBS})

target_include_directories(cmake_test PRIVATE ${INCLUDE_DIRS})

add_custom_target(run
    COMMAND cmake_test
    DEPENDS cmake_test
    WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
)