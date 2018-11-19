# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jamiechappell/git/FF_spectrometer/usercomponent

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jamiechappell/git/FF_spectrometer/usercomponent-build

# Include any dependencies generated for this target.
include CMakeFiles/udipole.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/udipole.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/udipole.dir/flags.make

CMakeFiles/udipole.dir/source/UDipole.cc.o: CMakeFiles/udipole.dir/flags.make
CMakeFiles/udipole.dir/source/UDipole.cc.o: /Users/jamiechappell/git/FF_spectrometer/usercomponent/source/UDipole.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jamiechappell/git/FF_spectrometer/usercomponent-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/udipole.dir/source/UDipole.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/udipole.dir/source/UDipole.cc.o -c /Users/jamiechappell/git/FF_spectrometer/usercomponent/source/UDipole.cc

CMakeFiles/udipole.dir/source/UDipole.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/udipole.dir/source/UDipole.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamiechappell/git/FF_spectrometer/usercomponent/source/UDipole.cc > CMakeFiles/udipole.dir/source/UDipole.cc.i

CMakeFiles/udipole.dir/source/UDipole.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/udipole.dir/source/UDipole.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamiechappell/git/FF_spectrometer/usercomponent/source/UDipole.cc -o CMakeFiles/udipole.dir/source/UDipole.cc.s

CMakeFiles/udipole.dir/source/UDipoleConstructor.cc.o: CMakeFiles/udipole.dir/flags.make
CMakeFiles/udipole.dir/source/UDipoleConstructor.cc.o: /Users/jamiechappell/git/FF_spectrometer/usercomponent/source/UDipoleConstructor.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jamiechappell/git/FF_spectrometer/usercomponent-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/udipole.dir/source/UDipoleConstructor.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/udipole.dir/source/UDipoleConstructor.cc.o -c /Users/jamiechappell/git/FF_spectrometer/usercomponent/source/UDipoleConstructor.cc

CMakeFiles/udipole.dir/source/UDipoleConstructor.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/udipole.dir/source/UDipoleConstructor.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamiechappell/git/FF_spectrometer/usercomponent/source/UDipoleConstructor.cc > CMakeFiles/udipole.dir/source/UDipoleConstructor.cc.i

CMakeFiles/udipole.dir/source/UDipoleConstructor.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/udipole.dir/source/UDipoleConstructor.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamiechappell/git/FF_spectrometer/usercomponent/source/UDipoleConstructor.cc -o CMakeFiles/udipole.dir/source/UDipoleConstructor.cc.s

# Object files for target udipole
udipole_OBJECTS = \
"CMakeFiles/udipole.dir/source/UDipole.cc.o" \
"CMakeFiles/udipole.dir/source/UDipoleConstructor.cc.o"

# External object files for target udipole
udipole_EXTERNAL_OBJECTS =

libudipole.dylib: CMakeFiles/udipole.dir/source/UDipole.cc.o
libudipole.dylib: CMakeFiles/udipole.dir/source/UDipoleConstructor.cc.o
libudipole.dylib: CMakeFiles/udipole.dir/build.make
libudipole.dylib: /usr/local/lib/libgmad.a
libudipole.dylib: /usr/local/lib/libbdsim.a
libudipole.dylib: /usr/local/lib/libG4Tree.dylib
libudipole.dylib: /usr/local/lib/libG4GMocren.dylib
libudipole.dylib: /usr/local/lib/libG4FR.dylib
libudipole.dylib: /usr/local/lib/libG4visHepRep.dylib
libudipole.dylib: /usr/local/lib/libG4RayTracer.dylib
libudipole.dylib: /usr/local/lib/libG4VRML.dylib
libudipole.dylib: /usr/local/lib/libG4OpenGL.dylib
libudipole.dylib: /opt/local/libexec/qt5/lib/QtOpenGL.framework/QtOpenGL
libudipole.dylib: /usr/local/lib/libG4gl2ps.dylib
libudipole.dylib: /opt/X11/lib/libGL.dylib
libudipole.dylib: /opt/X11/lib/libGLU.dylib
libudipole.dylib: /usr/local/lib/libG4vis_management.dylib
libudipole.dylib: /usr/local/lib/libG4modeling.dylib
libudipole.dylib: /usr/local/lib/libG4interfaces.dylib
libudipole.dylib: /opt/local/lib/libXm.dylib
libudipole.dylib: /opt/local/lib/libSM.dylib
libudipole.dylib: /opt/local/lib/libICE.dylib
libudipole.dylib: /opt/local/lib/libX11.dylib
libudipole.dylib: /opt/local/lib/libXext.dylib
libudipole.dylib: /opt/local/lib/libXt.dylib
libudipole.dylib: /opt/local/lib/libXmu.dylib
libudipole.dylib: /opt/local/libexec/qt5/lib/QtPrintSupport.framework/QtPrintSupport
libudipole.dylib: /opt/local/libexec/qt5/lib/QtWidgets.framework/QtWidgets
libudipole.dylib: /opt/local/libexec/qt5/lib/QtGui.framework/QtGui
libudipole.dylib: /opt/local/libexec/qt5/lib/QtCore.framework/QtCore
libudipole.dylib: /usr/local/lib/libG4persistency.dylib
libudipole.dylib: /opt/local/lib/libxerces-c.dylib
libudipole.dylib: /usr/local/lib/libG4error_propagation.dylib
libudipole.dylib: /usr/local/lib/libG4readout.dylib
libudipole.dylib: /usr/local/lib/libG4physicslists.dylib
libudipole.dylib: /usr/local/lib/libG4run.dylib
libudipole.dylib: /usr/local/lib/libG4event.dylib
libudipole.dylib: /usr/local/lib/libG4tracking.dylib
libudipole.dylib: /usr/local/lib/libG4parmodels.dylib
libudipole.dylib: /usr/local/lib/libG4processes.dylib
libudipole.dylib: /usr/local/lib/libG4analysis.dylib
libudipole.dylib: /opt/local/lib/libexpat.dylib
libudipole.dylib: /usr/local/lib/libG4digits_hits.dylib
libudipole.dylib: /usr/local/lib/libG4track.dylib
libudipole.dylib: /usr/local/lib/libG4particles.dylib
libudipole.dylib: /usr/local/lib/libG4geometry.dylib
libudipole.dylib: /usr/local/lib/libG4materials.dylib
libudipole.dylib: /usr/local/lib/libG4graphics_reps.dylib
libudipole.dylib: /usr/local/lib/libG4intercoms.dylib
libudipole.dylib: /usr/local/lib/libG4global.dylib
libudipole.dylib: /opt/local/lib/libCLHEP-2.4.1.0.dylib
libudipole.dylib: /usr/local/lib/libgzstream.dylib
libudipole.dylib: /usr/local/lib/libG4zlib.dylib
libudipole.dylib: CMakeFiles/udipole.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jamiechappell/git/FF_spectrometer/usercomponent-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libudipole.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/udipole.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/udipole.dir/build: libudipole.dylib

.PHONY : CMakeFiles/udipole.dir/build

CMakeFiles/udipole.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/udipole.dir/cmake_clean.cmake
.PHONY : CMakeFiles/udipole.dir/clean

CMakeFiles/udipole.dir/depend:
	cd /Users/jamiechappell/git/FF_spectrometer/usercomponent-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jamiechappell/git/FF_spectrometer/usercomponent /Users/jamiechappell/git/FF_spectrometer/usercomponent /Users/jamiechappell/git/FF_spectrometer/usercomponent-build /Users/jamiechappell/git/FF_spectrometer/usercomponent-build /Users/jamiechappell/git/FF_spectrometer/usercomponent-build/CMakeFiles/udipole.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/udipole.dir/depend
