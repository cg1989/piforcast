# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/projects/piforcast

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/projects/piforcast

# Include any dependencies generated for this target.
include src/CMakeFiles/piforcast.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/piforcast.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/piforcast.dir/flags.make

src/qrc_resources.cpp: src/qml/main.qml
src/qrc_resources.cpp: src/qml/rain.svg
src/qrc_resources.cpp: src/qml/baisse.svg
src/qrc_resources.cpp: src/resources.qrc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/projects/piforcast/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating qrc_resources.cpp"
	cd /home/pi/projects/piforcast/src && /usr/lib/arm-linux-gnueabihf/qt5/bin/rcc --name resources --output /home/pi/projects/piforcast/src/qrc_resources.cpp /home/pi/projects/piforcast/src/resources.qrc

src/CMakeFiles/piforcast.dir/bme280.c.o: src/CMakeFiles/piforcast.dir/flags.make
src/CMakeFiles/piforcast.dir/bme280.c.o: src/bme280.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/projects/piforcast/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/CMakeFiles/piforcast.dir/bme280.c.o"
	cd /home/pi/projects/piforcast/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/piforcast.dir/bme280.c.o   -c /home/pi/projects/piforcast/src/bme280.c

src/CMakeFiles/piforcast.dir/bme280.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/piforcast.dir/bme280.c.i"
	cd /home/pi/projects/piforcast/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/projects/piforcast/src/bme280.c > CMakeFiles/piforcast.dir/bme280.c.i

src/CMakeFiles/piforcast.dir/bme280.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/piforcast.dir/bme280.c.s"
	cd /home/pi/projects/piforcast/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/projects/piforcast/src/bme280.c -o CMakeFiles/piforcast.dir/bme280.c.s

src/CMakeFiles/piforcast.dir/bme280.c.o.requires:

.PHONY : src/CMakeFiles/piforcast.dir/bme280.c.o.requires

src/CMakeFiles/piforcast.dir/bme280.c.o.provides: src/CMakeFiles/piforcast.dir/bme280.c.o.requires
	$(MAKE) -f src/CMakeFiles/piforcast.dir/build.make src/CMakeFiles/piforcast.dir/bme280.c.o.provides.build
.PHONY : src/CMakeFiles/piforcast.dir/bme280.c.o.provides

src/CMakeFiles/piforcast.dir/bme280.c.o.provides.build: src/CMakeFiles/piforcast.dir/bme280.c.o


src/CMakeFiles/piforcast.dir/sensors.c.o: src/CMakeFiles/piforcast.dir/flags.make
src/CMakeFiles/piforcast.dir/sensors.c.o: src/sensors.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/projects/piforcast/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/CMakeFiles/piforcast.dir/sensors.c.o"
	cd /home/pi/projects/piforcast/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/piforcast.dir/sensors.c.o   -c /home/pi/projects/piforcast/src/sensors.c

src/CMakeFiles/piforcast.dir/sensors.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/piforcast.dir/sensors.c.i"
	cd /home/pi/projects/piforcast/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pi/projects/piforcast/src/sensors.c > CMakeFiles/piforcast.dir/sensors.c.i

src/CMakeFiles/piforcast.dir/sensors.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/piforcast.dir/sensors.c.s"
	cd /home/pi/projects/piforcast/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pi/projects/piforcast/src/sensors.c -o CMakeFiles/piforcast.dir/sensors.c.s

src/CMakeFiles/piforcast.dir/sensors.c.o.requires:

.PHONY : src/CMakeFiles/piforcast.dir/sensors.c.o.requires

src/CMakeFiles/piforcast.dir/sensors.c.o.provides: src/CMakeFiles/piforcast.dir/sensors.c.o.requires
	$(MAKE) -f src/CMakeFiles/piforcast.dir/build.make src/CMakeFiles/piforcast.dir/sensors.c.o.provides.build
.PHONY : src/CMakeFiles/piforcast.dir/sensors.c.o.provides

src/CMakeFiles/piforcast.dir/sensors.c.o.provides.build: src/CMakeFiles/piforcast.dir/sensors.c.o


src/CMakeFiles/piforcast.dir/capteur2.cpp.o: src/CMakeFiles/piforcast.dir/flags.make
src/CMakeFiles/piforcast.dir/capteur2.cpp.o: src/capteur2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/projects/piforcast/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/piforcast.dir/capteur2.cpp.o"
	cd /home/pi/projects/piforcast/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/piforcast.dir/capteur2.cpp.o -c /home/pi/projects/piforcast/src/capteur2.cpp

src/CMakeFiles/piforcast.dir/capteur2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/piforcast.dir/capteur2.cpp.i"
	cd /home/pi/projects/piforcast/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/projects/piforcast/src/capteur2.cpp > CMakeFiles/piforcast.dir/capteur2.cpp.i

src/CMakeFiles/piforcast.dir/capteur2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/piforcast.dir/capteur2.cpp.s"
	cd /home/pi/projects/piforcast/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/projects/piforcast/src/capteur2.cpp -o CMakeFiles/piforcast.dir/capteur2.cpp.s

src/CMakeFiles/piforcast.dir/capteur2.cpp.o.requires:

.PHONY : src/CMakeFiles/piforcast.dir/capteur2.cpp.o.requires

src/CMakeFiles/piforcast.dir/capteur2.cpp.o.provides: src/CMakeFiles/piforcast.dir/capteur2.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/piforcast.dir/build.make src/CMakeFiles/piforcast.dir/capteur2.cpp.o.provides.build
.PHONY : src/CMakeFiles/piforcast.dir/capteur2.cpp.o.provides

src/CMakeFiles/piforcast.dir/capteur2.cpp.o.provides.build: src/CMakeFiles/piforcast.dir/capteur2.cpp.o


src/CMakeFiles/piforcast.dir/main.cpp.o: src/CMakeFiles/piforcast.dir/flags.make
src/CMakeFiles/piforcast.dir/main.cpp.o: src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/projects/piforcast/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/piforcast.dir/main.cpp.o"
	cd /home/pi/projects/piforcast/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/piforcast.dir/main.cpp.o -c /home/pi/projects/piforcast/src/main.cpp

src/CMakeFiles/piforcast.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/piforcast.dir/main.cpp.i"
	cd /home/pi/projects/piforcast/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/projects/piforcast/src/main.cpp > CMakeFiles/piforcast.dir/main.cpp.i

src/CMakeFiles/piforcast.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/piforcast.dir/main.cpp.s"
	cd /home/pi/projects/piforcast/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/projects/piforcast/src/main.cpp -o CMakeFiles/piforcast.dir/main.cpp.s

src/CMakeFiles/piforcast.dir/main.cpp.o.requires:

.PHONY : src/CMakeFiles/piforcast.dir/main.cpp.o.requires

src/CMakeFiles/piforcast.dir/main.cpp.o.provides: src/CMakeFiles/piforcast.dir/main.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/piforcast.dir/build.make src/CMakeFiles/piforcast.dir/main.cpp.o.provides.build
.PHONY : src/CMakeFiles/piforcast.dir/main.cpp.o.provides

src/CMakeFiles/piforcast.dir/main.cpp.o.provides.build: src/CMakeFiles/piforcast.dir/main.cpp.o


src/CMakeFiles/piforcast.dir/qrc_resources.cpp.o: src/CMakeFiles/piforcast.dir/flags.make
src/CMakeFiles/piforcast.dir/qrc_resources.cpp.o: src/qrc_resources.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/projects/piforcast/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/piforcast.dir/qrc_resources.cpp.o"
	cd /home/pi/projects/piforcast/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/piforcast.dir/qrc_resources.cpp.o -c /home/pi/projects/piforcast/src/qrc_resources.cpp

src/CMakeFiles/piforcast.dir/qrc_resources.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/piforcast.dir/qrc_resources.cpp.i"
	cd /home/pi/projects/piforcast/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/projects/piforcast/src/qrc_resources.cpp > CMakeFiles/piforcast.dir/qrc_resources.cpp.i

src/CMakeFiles/piforcast.dir/qrc_resources.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/piforcast.dir/qrc_resources.cpp.s"
	cd /home/pi/projects/piforcast/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/projects/piforcast/src/qrc_resources.cpp -o CMakeFiles/piforcast.dir/qrc_resources.cpp.s

src/CMakeFiles/piforcast.dir/qrc_resources.cpp.o.requires:

.PHONY : src/CMakeFiles/piforcast.dir/qrc_resources.cpp.o.requires

src/CMakeFiles/piforcast.dir/qrc_resources.cpp.o.provides: src/CMakeFiles/piforcast.dir/qrc_resources.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/piforcast.dir/build.make src/CMakeFiles/piforcast.dir/qrc_resources.cpp.o.provides.build
.PHONY : src/CMakeFiles/piforcast.dir/qrc_resources.cpp.o.provides

src/CMakeFiles/piforcast.dir/qrc_resources.cpp.o.provides.build: src/CMakeFiles/piforcast.dir/qrc_resources.cpp.o


src/CMakeFiles/piforcast.dir/piforcast_automoc.cpp.o: src/CMakeFiles/piforcast.dir/flags.make
src/CMakeFiles/piforcast.dir/piforcast_automoc.cpp.o: src/piforcast_automoc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/projects/piforcast/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/piforcast.dir/piforcast_automoc.cpp.o"
	cd /home/pi/projects/piforcast/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/piforcast.dir/piforcast_automoc.cpp.o -c /home/pi/projects/piforcast/src/piforcast_automoc.cpp

src/CMakeFiles/piforcast.dir/piforcast_automoc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/piforcast.dir/piforcast_automoc.cpp.i"
	cd /home/pi/projects/piforcast/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/projects/piforcast/src/piforcast_automoc.cpp > CMakeFiles/piforcast.dir/piforcast_automoc.cpp.i

src/CMakeFiles/piforcast.dir/piforcast_automoc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/piforcast.dir/piforcast_automoc.cpp.s"
	cd /home/pi/projects/piforcast/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/projects/piforcast/src/piforcast_automoc.cpp -o CMakeFiles/piforcast.dir/piforcast_automoc.cpp.s

src/CMakeFiles/piforcast.dir/piforcast_automoc.cpp.o.requires:

.PHONY : src/CMakeFiles/piforcast.dir/piforcast_automoc.cpp.o.requires

src/CMakeFiles/piforcast.dir/piforcast_automoc.cpp.o.provides: src/CMakeFiles/piforcast.dir/piforcast_automoc.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/piforcast.dir/build.make src/CMakeFiles/piforcast.dir/piforcast_automoc.cpp.o.provides.build
.PHONY : src/CMakeFiles/piforcast.dir/piforcast_automoc.cpp.o.provides

src/CMakeFiles/piforcast.dir/piforcast_automoc.cpp.o.provides.build: src/CMakeFiles/piforcast.dir/piforcast_automoc.cpp.o


# Object files for target piforcast
piforcast_OBJECTS = \
"CMakeFiles/piforcast.dir/bme280.c.o" \
"CMakeFiles/piforcast.dir/sensors.c.o" \
"CMakeFiles/piforcast.dir/capteur2.cpp.o" \
"CMakeFiles/piforcast.dir/main.cpp.o" \
"CMakeFiles/piforcast.dir/qrc_resources.cpp.o" \
"CMakeFiles/piforcast.dir/piforcast_automoc.cpp.o"

# External object files for target piforcast
piforcast_EXTERNAL_OBJECTS =

src/piforcast: src/CMakeFiles/piforcast.dir/bme280.c.o
src/piforcast: src/CMakeFiles/piforcast.dir/sensors.c.o
src/piforcast: src/CMakeFiles/piforcast.dir/capteur2.cpp.o
src/piforcast: src/CMakeFiles/piforcast.dir/main.cpp.o
src/piforcast: src/CMakeFiles/piforcast.dir/qrc_resources.cpp.o
src/piforcast: src/CMakeFiles/piforcast.dir/piforcast_automoc.cpp.o
src/piforcast: src/CMakeFiles/piforcast.dir/build.make
src/piforcast: /usr/lib/arm-linux-gnueabihf/libQt5Qml.so.5.7.1
src/piforcast: /usr/lib/arm-linux-gnueabihf/libQt5Gui.so.5.7.1
src/piforcast: /usr/lib/arm-linux-gnueabihf/libQt5Network.so.5.7.1
src/piforcast: /usr/lib/arm-linux-gnueabihf/libQt5Core.so.5.7.1
src/piforcast: src/CMakeFiles/piforcast.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/projects/piforcast/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable piforcast"
	cd /home/pi/projects/piforcast/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/piforcast.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/piforcast.dir/build: src/piforcast

.PHONY : src/CMakeFiles/piforcast.dir/build

src/CMakeFiles/piforcast.dir/requires: src/CMakeFiles/piforcast.dir/bme280.c.o.requires
src/CMakeFiles/piforcast.dir/requires: src/CMakeFiles/piforcast.dir/sensors.c.o.requires
src/CMakeFiles/piforcast.dir/requires: src/CMakeFiles/piforcast.dir/capteur2.cpp.o.requires
src/CMakeFiles/piforcast.dir/requires: src/CMakeFiles/piforcast.dir/main.cpp.o.requires
src/CMakeFiles/piforcast.dir/requires: src/CMakeFiles/piforcast.dir/qrc_resources.cpp.o.requires
src/CMakeFiles/piforcast.dir/requires: src/CMakeFiles/piforcast.dir/piforcast_automoc.cpp.o.requires

.PHONY : src/CMakeFiles/piforcast.dir/requires

src/CMakeFiles/piforcast.dir/clean:
	cd /home/pi/projects/piforcast/src && $(CMAKE_COMMAND) -P CMakeFiles/piforcast.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/piforcast.dir/clean

src/CMakeFiles/piforcast.dir/depend: src/qrc_resources.cpp
	cd /home/pi/projects/piforcast && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/projects/piforcast /home/pi/projects/piforcast/src /home/pi/projects/piforcast /home/pi/projects/piforcast/src /home/pi/projects/piforcast/src/CMakeFiles/piforcast.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/piforcast.dir/depend

