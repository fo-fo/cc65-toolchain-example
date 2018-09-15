cc65 toolchain example
======================

Intro
-----

This is a minimal example of how a custom CMake toolchain file can be used to
compile projects that use the cc65 compiler/assembler.

In this example there are two assembly source files (`source1.s` and
`source2.s`), a header file (`header1.inc`) that is included by one of the
source files, and a linker configuration file (`linker.cfg`). The files can be
found in the `src` directory. A change in any of these files will trigger
recompilation.

More source files, custom build rules, etc., can be specified in
`CMakeLists.txt`. The build outputs a binary file
`cc65_toolchain_example.bin` in the `build` directory.

Dependencies
------------

You can probably find these from your favorite package manager, or you can
install them manually.

- cc65
- CMake
- Ninja

The dependency handling doesn't work with the Makefile generator for some
reason, so I recommend using Ninja.

If you're on Windows, the `build.sh` script won't work (it might work in MinGW
and definitely should work on WSL, though). In that case you can run the
commands manually, or make a batch script for `cmd`.

Usage
-----

Simply run `./build.sh` to build the project. Remove the `build` directory if
you want a clean build.
