cmake_minimum_required(VERSION 3.18)
project(ecg_monitor)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

### PanTompkinsQRS ###
# Add source files.
add_library(PanTompkinsQRS SHARED ../../ios/Classes/PanTompkinsQRS/src/panTompkins.cpp)

### ecg_model ###
# Add source files.
add_library(ecg_model SHARED ../../ios/Classes/ecg_model_cpp/src/forward.cpp)

# Find and include pytorch headers.
file(GLOB PYTORCH_INCLUDE_DIRS "../../build/app/pytorch_android*.aar/headers")
target_include_directories(ecg_model PUBLIC ${PYTORCH_INCLUDE_DIRS})

# Find and link pytorch libraries.
file(GLOB PYTORCH_LINK_DIRS "../../build/app/pytorch_android*.aar/jni/${ANDROID_ABI}")
find_library(PYTORCH_LIBRARY pytorch_jni
  PATHS ${PYTORCH_LINK_DIRS}
  NO_CMAKE_FIND_ROOT_PATH)
find_library(FBJNI_LIBRARY fbjni
  PATHS ${PYTORCH_LINK_DIRS}
  NO_CMAKE_FIND_ROOT_PATH)
target_link_libraries(ecg_model ${PYTORCH_LIBRARY} ${FBJNI_LIBRARY})
target_link_options(ecg_model PUBLIC "-Wl,--no-fatal-warnings")
