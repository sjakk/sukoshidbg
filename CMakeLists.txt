cmake_minimum_required(VERSION 3.19)

project("sukoshi" LANGUAGES CXX)

include("CTest")


add_subdirectory("src")
add_subdirectory("tools")


if(BULDING_TEST)
add_subdirectory("test")
endif()
