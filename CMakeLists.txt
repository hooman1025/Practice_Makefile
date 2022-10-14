cmake_minimum_required(VERSION 3.10)

# set the project name
project(Hello)

# add the executable
add_executable(program main.c hello.c)

# add the include header
target_include_directories(program PUBLIC ${CMAKE_SOURCE_DIR}/includes)
