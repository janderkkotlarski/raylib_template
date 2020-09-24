#!/bin/bash
#
# Build raylib
#
# From https://github.com/raysan5/raylib/wiki/Working-on-GNU-Linux#build-raylib-using-make
#
#
git clone https://github.com/raysan5/raylib.git raylib
cd raylib/src/ 

# Shared
make PLATFORM=PLATFORM_DESKTOP RAYLIB_LIBTYPE=SHARED

# Static
make PLATFORM=PLATFORM_DESKTOP

