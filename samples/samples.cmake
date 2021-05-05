
#
# shell
#

add_executable(shell
  samples/shell.cc
)

target_compile_definitions(shell PRIVATE $<${is-msvc}:_HAS_EXCEPTIONS=0>)
target_compile_options(shell PRIVATE ${disable-exceptions})
target_include_directories(shell PRIVATE ${D})
target_link_libraries(shell
  PRIVATE
    v8_libbase
    v8_libplatform
    v8_base_without_compiler
    v8_compiler
    v8_initializers
    v8_snapshot
)



#
# process
#

add_executable(process
        samples/process.cc
        )

target_compile_definitions(process PRIVATE $<${is-msvc}:_HAS_EXCEPTIONS=0>)
target_compile_options(process PRIVATE ${disable-exceptions})
target_include_directories(process PRIVATE ${D})
target_link_libraries(process
        PRIVATE
        v8_libbase
        v8_libplatform
        v8_base_without_compiler
        v8_compiler
        v8_initializers
        v8_snapshot
        )



#
# hello-world
#

add_executable(hello-world
        samples/hello-world.cc
        )

target_compile_definitions(hello-world PRIVATE $<${is-msvc}:_HAS_EXCEPTIONS=0>)
target_compile_options(hello-world PRIVATE ${disable-exceptions})
target_include_directories(hello-world PRIVATE ${D})
target_link_libraries(hello-world
        PRIVATE
        v8_libbase
        v8_libplatform
        v8_base_without_compiler
        v8_compiler
        v8_initializers
        v8_snapshot
        )