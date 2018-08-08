cmake_minimum_required(VERSION 2.8)
project(helloworld)

add_executable(helloworld hello.cpp)

set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake/modules/)
include(FindLIBUPS)

find_package (LIBUPS REQUIRED)

if (LIBUPS_FOUND)
  include_directories(${LIBUPS_INCLUDE_DIRS})
  target_link_libraries (helloworld ${LIBUPS_LIBRARIES})
endif (LIBUPS_FOUND)
