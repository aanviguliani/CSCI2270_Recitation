cmake_minimum_required(VERSION 3.12)
project(CSCI2270_Recitation5)

set(CMAKE_CXX_STANDARD 14)

add_executable(Stack Driver.cpp StackLL.cpp)
add_executable(Queue DriverQueue.cpp QueueLL.cpp)