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
include CMakeFiles/bdsimuser.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bdsimuser.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bdsimuser.dir/flags.make

CMakeFiles/bdsimuser.dir/usercomponent.cc.o: CMakeFiles/bdsimuser.dir/flags.make
CMakeFiles/bdsimuser.dir/usercomponent.cc.o: /Users/jamiechappell/git/FF_spectrometer/usercomponent/usercomponent.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jamiechappell/git/FF_spectrometer/usercomponent-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/bdsimuser.dir/usercomponent.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/bdsimuser.dir/usercomponent.cc.o -c /Users/jamiechappell/git/FF_spectrometer/usercomponent/usercomponent.cc

CMakeFiles/bdsimuser.dir/usercomponent.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bdsimuser.dir/usercomponent.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamiechappell/git/FF_spectrometer/usercomponent/usercomponent.cc > CMakeFiles/bdsimuser.dir/usercomponent.cc.i

CMakeFiles/bdsimuser.dir/usercomponent.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bdsimuser.dir/usercomponent.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamiechappell/git/FF_spectrometer/usercomponent/usercomponent.cc -o CMakeFiles/bdsimuser.dir/usercomponent.cc.s

# Object files for target bdsimuser
bdsimuser_OBJECTS = \
"CMakeFiles/bdsimuser.dir/usercomponent.cc.o"

# External object files for target bdsimuser
bdsimuser_EXTERNAL_OBJECTS =

bdsimuser: CMakeFiles/bdsimuser.dir/usercomponent.cc.o
bdsimuser: CMakeFiles/bdsimuser.dir/build.make
bdsimuser: libudipole.dylib
bdsimuser: /usr/local/lib/libgmad.a
bdsimuser: /usr/local/lib/libbdsim.a
bdsimuser: /opt/local/lib/libCLHEP-2.4.1.0.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4Tree.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4GMocren.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4FR.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4visHepRep.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4RayTracer.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4VRML.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4OpenGL.dylib
bdsimuser: /opt/local/libexec/qt4/lib/libQtOpenGL.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4gl2ps.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4vis_management.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4modeling.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4interfaces.dylib
bdsimuser: /opt/local/libexec/qt4/lib/libQtGui.dylib
bdsimuser: /opt/local/libexec/qt4/lib/libQtCore.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4persistency.dylib
bdsimuser: /opt/local/lib/libxerces-c.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4error_propagation.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4readout.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4physicslists.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4run.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4event.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4tracking.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4parmodels.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4processes.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4analysis.dylib
bdsimuser: /opt/local/lib/libexpat.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4digits_hits.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4track.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4particles.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4geometry.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4materials.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4graphics_reps.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4intercoms.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4global.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4clhep.dylib
bdsimuser: /usr/local/lib/libgzstream.dylib
bdsimuser: /opt/local/lib/Geant4/Geant4.10.4/libG4zlib.dylib
bdsimuser: CMakeFiles/bdsimuser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jamiechappell/git/FF_spectrometer/usercomponent-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bdsimuser"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bdsimuser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bdsimuser.dir/build: bdsimuser

.PHONY : CMakeFiles/bdsimuser.dir/build

CMakeFiles/bdsimuser.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bdsimuser.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bdsimuser.dir/clean

CMakeFiles/bdsimuser.dir/depend:
	cd /Users/jamiechappell/git/FF_spectrometer/usercomponent-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jamiechappell/git/FF_spectrometer/usercomponent /Users/jamiechappell/git/FF_spectrometer/usercomponent /Users/jamiechappell/git/FF_spectrometer/usercomponent-build /Users/jamiechappell/git/FF_spectrometer/usercomponent-build /Users/jamiechappell/git/FF_spectrometer/usercomponent-build/CMakeFiles/bdsimuser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bdsimuser.dir/depend

