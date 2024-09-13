cmake_minimum_required(VERSION 3.16)
project(SMC)
set(CMAKE_CXX_STANDARD 20)
if(CMAKE_COMPILER_IS_GNUCXX)
    message(STATUS "GCC detected, adding compile flags")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++98 -pedantic -Wall -Wextra")
endif(CMAKE_COMPILER_IS_GNUCXX)
add_library(smc AppClass.cpp AppClass.h AppClass_sm.cpp AppClass_sm.h)

