cmake_minimum_required(VERSION 3.10)
project(PreprocessorTest)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(test_app test.cpp)

# Check if DEBUG is defined and pass it to the compiler if it is
if(DEFINED DEBUG)
    target_compile_definitions(test_app PRIVATE DEBUG)
endif()