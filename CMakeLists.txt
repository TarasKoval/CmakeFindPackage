cmake_minimum_required(VERSION 2.8)
project(helloworld)

add_executable(helloworld hello.cpp)

find_package (LibXml2)

if (LIBXML2_FOUND)
  include_directories(${LIBXML2_INCLUDE_DIRS})
  target_link_libraries (helloworld ${LIBXML2_LIBRARIES})
endif (LIBXML2_FOUND)
