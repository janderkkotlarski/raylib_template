CONFIG += c++17
QMAKE_CXXFLAGS += -std=c++17

# High warnings levels
# -Werror
# QMAKE_CXXFLAGS += -Wall -Wextra -Wshadow -Wnon-virtual-dtor -pedantic -Weffc++

# Try dynamic, as this is recommended
#QMAKE_CXXFLAGS += -static-libgcc -static-libstdc++

# Allow debug and release mode
CONFIG += debug_and_release

# CONFIG += staticlib

# RJCB: Disable Qt
QT -= core gui

# RJCB: Link to Raylib, from https://github.com/raysan5/raylib/wiki/Working-on-GNU-Linux#unity-build---the-simplest-way-to-build-a-project
LIBS += -lraylib

# RJCB: Other libs
LIBS += -lm -lpthread -ldl -lrt -lX11 -lxcb -lXau -lXdmcp

# RJCB: GL lib is hardest
#LIBS += -L/usr/lib/x86_64-linux-gnu
#LIBS += -L/usr/lib/x86_64-linux-gnu/libGL
LIBS += -L/usr/lib/i386-linux-gnu
LIBS += -L/usr/lib/i386-linux-gnu/libGL
#LIBS += -lGL


# From https://stackoverflow.com/a/32184137 I learned:
#
# To locate libG, I did
#
#   locate libGL | egrep "^/usr/.*64.*/libGL\."
#
# Then the post recommends to create a symbolic link,
# which I did not

# In release mode, turn on profiling
CONFIG(release, debug|release) {

  DEFINES += NDEBUG

  # gprof
  QMAKE_CXXFLAGS += -pg
  QMAKE_LFLAGS += -pg
}

INCLUDEPATH += C:/raylib/raylib/src
INCLUDEPATH += C:/raylib/raylib

LIBS += -LC:/raylib/MinGW/bin
LIBS += -LC:/raylib/src/externa/glfw
LIBS += -LC:/raylib/raylib
#LIBS += -Iexternal -lraylib -lopengl32 -lgdi32 -lwinmm
#LIBS += -static -lpthread
SOURCES += \
        main.cpp

