# Generated Makefile -- DO NOT EDIT!

HOST=win64
SPEC=debug_win_msvc-2017_x64
SimpleGlApp_BASE=C:/Projects/Samples/SimpleGlApp
SimpleGlApp_OUTPUT=$(SimpleGlApp_BASE)/.out/$(SPEC)


# this turns off the suffix rules built into make
.SUFFIXES:

# this turns off the RCS / SCCS implicit rules of GNU Make
% : RCS/%,v
% : RCS/%
% : %,v
% : s.%
% : SCCS/s.%

# If a rule fails, delete $@.
.DELETE_ON_ERROR:

ifeq ($(VERBOSE),)
ECHO=@
else
ECHO=
endif

ifeq ($(QUIET),)
INFO=@echo
else
INFO=@:
endif

all: prebuild build postbuild


prebuild :: 

postbuild :: 

clean :: SimpleGlApp-clean

$(MLSDK)/tools/mabu/data/options/magicleap.option : 

$(MLSDK)/tools/mabu/data/options/runtime/shared.option : 

C:/Projects/Samples/SimpleGlApp/glfw.comp : 

$(MLSDK)/tools/mabu/data/options/warn/on.option : 

$(MLSDK)/tools/mabu/data/options/package/debuggable/on.option : 

$(MLSDK)/tools/mabu/data/options/exceptions/on.option : 

$(MLSDK)/tools/mabu/data/configs/debug.config : 

$(MLSDK)/.metadata/components/ml_sdk.comp : 

$(MLSDK)/tools/mabu/data/components/stdc++.comp : 

$(MLSDK)/tools/mabu/data/options/standard-c++/11.option : 

$(MLSDK)/tools/mabu/data/options/debug/on.option : 

C:/Projects/Samples/SimpleGlApp/glad.comp : 

$(MLSDK)/tools/mabu/data/options/optimize/off.option : 

$(MLSDK)/.metadata/components/ml_sdk_common.comp : 

$(MLSDK)/tools/mabu/data/components/OpenGL.comp : 

PROGRAM_PREFIX=
PROGRAM_EXT=.exe
SHARED_PREFIX=
SHARED_EXT=.dll
IMPLIB_PREFIX=
IMPLIB_EXT=.lib
STATIC_PREFIX=
STATIC_EXT=.lib
COMPILER_PREFIX=
LINKER_PREFIX=

-make-directories : C:/Projects/Samples/SimpleGlApp/.out/debug_win_msvc-2017_x64 C:/Projects/Samples/SimpleGlApp/.out/debug_win_msvc-2017_x64/obj.SimpleGlApp

C:/Projects/Samples/SimpleGlApp/.out/debug_win_msvc-2017_x64 : 
	$(ECHO) @mkdir -p C:/Projects/Samples/SimpleGlApp/.out/debug_win_msvc-2017_x64

C:/Projects/Samples/SimpleGlApp/.out/debug_win_msvc-2017_x64/obj.SimpleGlApp : 
	$(ECHO) @mkdir -p C:/Projects/Samples/SimpleGlApp/.out/debug_win_msvc-2017_x64/obj.SimpleGlApp

include $(SimpleGlApp_OUTPUT)/SimpleGlApp.mk
build :  | SimpleGlApp-all

