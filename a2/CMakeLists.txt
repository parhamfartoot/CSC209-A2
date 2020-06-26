cmake_minimum_required(VERSION 3.15)
project(a2 C)

set(CMAKE_C_STANDARD 11)

include_directories(.)

add_executable(a2
        simpletest.c
        smalloc.c
        smalloc.h
        testhelpers.c)
