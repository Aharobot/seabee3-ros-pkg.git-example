cmake_minimum_required( VERSION 2.6 )

# set project name
project( probabilistics )

set( EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin )
set( LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib )

find_package( OpenCV REQUIRED )

add_executable( hello_world hello_world.cpp )
add_executable( hello_opencv hello_opencv.cpp )

message( "opencv libraries: ${OpenCV_LIBS}" )

target_link_libraries( hello_opencv ${OpenCV_LIBS} )
