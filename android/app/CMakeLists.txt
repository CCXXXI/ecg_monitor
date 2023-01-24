cmake_minimum_required(VERSION 3.18)
project(ecg_model)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wpedantic -Werror")

add_library(ecg_model SHARED ../../ios/Cpp/src/forward.cpp)

set(build_DIR ../../build/app)

file(GLOB PYTORCH_INCLUDE_DIRS "${build_DIR}/pytorch_android*.aar/headers")
target_include_directories(ecg_model PUBLIC ${PYTORCH_INCLUDE_DIRS})

file(GLOB PYTORCH_LINK_DIRS "${build_DIR}/pytorch_android*.aar/jni/${ANDROID_ABI}")
find_library(PYTORCH_LIBRARY pytorch_jni
  PATHS ${PYTORCH_LINK_DIRS}
  NO_CMAKE_FIND_ROOT_PATH)
find_library(FBJNI_LIBRARY fbjni
  PATHS ${PYTORCH_LINK_DIRS}
  NO_CMAKE_FIND_ROOT_PATH)
target_link_libraries(ecg_model ${PYTORCH_LIBRARY} ${FBJNI_LIBRARY})
