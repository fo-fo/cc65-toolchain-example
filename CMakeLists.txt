cmake_minimum_required(VERSION 3.0)

project(cc65_toolchain_example_project ASM)

set(source_files
    src/source1.s
    src/source2.s
)

set(linker_config_file "${CMAKE_SOURCE_DIR}/src/linker.cfg")

add_executable(cc65_toolchain_example ${source_files})

set_target_properties(cc65_toolchain_example
    PROPERTIES
        OUTPUT_NAME cc65_toolchain_example.bin
        COMPILE_FLAGS "-t none"
        LINK_FLAGS "-t none -C ${linker_config_file}"
)

# The linker configuration file needs to be a dependency of one of the source files,
# otherwise rebuild won't be triggered when the linker configuration changes.
set_source_files_properties(src/source1.s PROPERTIES OBJECT_DEPENDS ${linker_config_file})
