cmake_minimum_required (VERSION 3.17.0)

project(cmake_test VERSION 0.1.0)


set(SRC
  main.cpp
  ${PROJECT_SOURCE_DIR}/cpp-libs/pugixml/src/pugixml.cpp
)

add_executable(cmake_test ${SRC})

target_include_directories(cmake_test PRIVATE ${PROJECT_SOURCE_DIR}/cpp-libs/pugixml/src)