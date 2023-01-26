include_directories(${PROJECT_SOURCE_DIR}/lib_System)

FILE(GLOB SOURCES *.cpp)

add_custom_command(OUTPUT git_version.cpp COMMAND sh "${PROJECT_SOURCE_DIR}/make_version.sh")

# Add executable called "helloDemo" that is built from the source files
# "demo.cxx" and "demo_b.cxx". The extensions are automatically found.
add_executable (app_Main ${SOURCES} git_version.cpp)

target_link_libraries (app_Main LINK_PUBLIC System)
