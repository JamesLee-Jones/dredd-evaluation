cmake_minimum_required(VERSION 3.20)
project(count-if)

find_package(LLVM 16 REQUIRED CONFIG)

# CountIf includes headers from LLVM - update the include paths accordingly
include_directories(SYSTEM ${LLVM_INCLUDE_DIRS})

# Use the same C++ standard as LLVM does
set(CMAKE_CXX_STANDARD 17 CACHE STRING "")

# LLVM is normally built without RTTI. Be consistent with that.
if(NOT LLVM_ENABLE_RTTI)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
endif()

add_library(CountIf SHARED CountIf.cpp)

# Allow undefined symbols in shared objects on Darwin (this is the default
# behaviour on Linux)
target_link_libraries(CountIf
  "$<$<PLATFORM_ID:Darwin>:-undefined dynamic_lookup>")
