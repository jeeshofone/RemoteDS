cmake_minimum_required(VERSION 3.1...3.15)

if(${CMAKE_VERSION} VERSION_LESS 3.12)
    cmake_policy(VERSION ${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION})
endif()

project(RemoteDS    VERSION 0.1
                    Description "Strings for the puppet of a Robot"
                    LANGUAGES CXX)

add_executable(RemoteDSExec main.cpp)

target_include_directories(RemoteDSExec)