# Generated Makefile -- DO NOT EDIT!

CC=C:/Users/jeff/MagicLeap/mlsdk/v0.18.0/tools/toolchains/bin/aarch64-linux-android-clang
COMPILER_PREFIX=
CXX=C:/Users/jeff/MagicLeap/mlsdk/v0.18.0/tools/toolchains/bin/aarch64-linux-android-clang++
HOST=win64
LINKER_PREFIX=
MLSDK=C:/Users/jeff/MagicLeap/mlsdk/v0.18.0
OBJCOPY=C:/Users/jeff/MagicLeap/mlsdk/v0.18.0/tools/toolchains/bin/aarch64-linux-android-objcopy.exe
RM=rm
SPEC=debug_lumin_clang-3.8_aarch64
STRIP=C:/Users/jeff/MagicLeap/mlsdk/v0.18.0/tools/toolchains/bin/aarch64-linux-android-strip.exe
SimpleGlApp_BASE=C:/Projects/Samples/SimpleGlApp
SimpleGlApp_CPPFLAGS=-I$(MLSDK)/include -DML_DEVICE -DUSE_GLFW=0
SimpleGlApp_CXXFLAGS=--sysroot=$(MLSDK)/lumin -march=armv8-a -mcpu=cortex-a57+crypto -fPIE -fpic -ffunction-sections -funwind-tables -fstack-protector-strong -no-canonical-prefixes -Wa,--noexecstack -Wformat -Werror=format-security -Wno-invalid-command-line-argument -Wno-unused-command-line-argument -g -fno-limit-debug-info -O0 -nostdinc++ -I$(MLSDK)/lumin/stl/libc++/include -fexceptions -std=c++11 -fdiagnostics-format=msvc
SimpleGlApp_LDFLAGS=-Wl,-unresolved-symbols=ignore-in-shared-libs --sysroot=$(MLSDK)/lumin -pie -Wl,--gc-sections -Wl,-z,nocopyreloc -Wl,--warn-shared-textrel -Wl,--fatal-warnings -Wl,--build-id -no-canonical-prefixes -Wl,--no-undefined -Wl,-z,noexecstack -Wl,-z,relro -Wl,-z,now -Wl,--enable-new-dtags '-Wl,-rpath=$$ORIGIN' -g -L$(MLSDK)/lumin/stl/libc++/lib
SimpleGlApp_LIBS=-L$(MLSDK)/lib/lumin -Wl,--no-as-needed -Wl,--start-group -Bdynamic -lc -lc++_shared -landroid_support -lEGL -lGLESv2 -lGLESv3 -lm -lml_graphics -lml_perception_client -lml_input -lml_lifecycle -lml_ext_logging -Wl,--end-group
SimpleGlApp_OUTPUT=$(SimpleGlApp_BASE)/.out/$(SPEC)

$(SimpleGlApp_OUTPUT)/SimpleGlApp : $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/load-shader.cpp.o $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/main.cpp.o $(SimpleGlApp_BASE)/SimpleGlApp.mabu $(MLSDK)/.metadata/components/ml_sdk.comp $(MLSDK)/.metadata/components/ml_sdk_common.comp $(MLSDK)/tools/mabu/data/components/OpenGL.comp $(MLSDK)/tools/mabu/data/components/stdc++.comp $(MLSDK)/tools/mabu/data/configs/debug.config $(MLSDK)/tools/mabu/data/options/debug/on.option $(MLSDK)/tools/mabu/data/options/exceptions/on.option $(MLSDK)/tools/mabu/data/options/magicleap.option $(MLSDK)/tools/mabu/data/options/optimize/off.option $(MLSDK)/tools/mabu/data/options/package/debuggable/on.option $(MLSDK)/tools/mabu/data/options/runtime/shared.option $(MLSDK)/tools/mabu/data/options/standard-c++/11.option $(MLSDK)/tools/mabu/data/options/warn/on.option
	$(INFO) \[SimpleGlApp\]\ Linking\ program\ 'SimpleGlApp'...
	$(ECHO) cd $(SimpleGlApp_OUTPUT) && $(LINKER_PREFIX) $(CC) -o SimpleGlApp obj.SimpleGlApp/load-shader.cpp.o obj.SimpleGlApp/main.cpp.o $(SimpleGlApp_LIBS) $(SimpleGlApp_LDFLAGS)
	$(ECHO) $(OBJCOPY) --only-keep-debug $(SimpleGlApp_OUTPUT)/SimpleGlApp $(SimpleGlApp_OUTPUT)/SimpleGlApp.sym
	$(ECHO) $(OBJCOPY) --add-gnu-debuglink $(SimpleGlApp_OUTPUT)/SimpleGlApp.sym $(SimpleGlApp_OUTPUT)/SimpleGlApp $(SimpleGlApp_OUTPUT)/SimpleGlApp
	$(ECHO) $(STRIP) --strip-unneeded $(SimpleGlApp_OUTPUT)/SimpleGlApp

$(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/load-shader.cpp.o : $(SimpleGlApp_BASE)/load-shader.cpp $(SimpleGlApp_BASE)/SimpleGlApp.mabu $(MLSDK)/.metadata/components/ml_sdk.comp $(MLSDK)/.metadata/components/ml_sdk_common.comp $(MLSDK)/tools/mabu/data/components/OpenGL.comp $(MLSDK)/tools/mabu/data/components/stdc++.comp $(MLSDK)/tools/mabu/data/configs/debug.config $(MLSDK)/tools/mabu/data/options/debug/on.option $(MLSDK)/tools/mabu/data/options/exceptions/on.option $(MLSDK)/tools/mabu/data/options/magicleap.option $(MLSDK)/tools/mabu/data/options/optimize/off.option $(MLSDK)/tools/mabu/data/options/package/debuggable/on.option $(MLSDK)/tools/mabu/data/options/runtime/shared.option $(MLSDK)/tools/mabu/data/options/standard-c++/11.option $(MLSDK)/tools/mabu/data/options/warn/on.option
	$(INFO) \[SimpleGlApp\]\ Compiling\ 'load-shader.cpp'...
	$(ECHO) $(COMPILER_PREFIX) $(CXX) -c $(SimpleGlApp_BASE)/load-shader.cpp -o $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/load-shader.cpp.o -MD -MP -MF $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/load-shader.cpp.d $(SimpleGlApp_CPPFLAGS) $(SimpleGlApp_CXXFLAGS)
	$(ECHO) echo $(SimpleGlApp_BASE)/load-shader.cpp : >> $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/load-shader.cpp.d

-include $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/load-shader.cpp.d
$(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/main.cpp.o : $(SimpleGlApp_BASE)/main.cpp $(SimpleGlApp_BASE)/SimpleGlApp.mabu $(MLSDK)/.metadata/components/ml_sdk.comp $(MLSDK)/.metadata/components/ml_sdk_common.comp $(MLSDK)/tools/mabu/data/components/OpenGL.comp $(MLSDK)/tools/mabu/data/components/stdc++.comp $(MLSDK)/tools/mabu/data/configs/debug.config $(MLSDK)/tools/mabu/data/options/debug/on.option $(MLSDK)/tools/mabu/data/options/exceptions/on.option $(MLSDK)/tools/mabu/data/options/magicleap.option $(MLSDK)/tools/mabu/data/options/optimize/off.option $(MLSDK)/tools/mabu/data/options/package/debuggable/on.option $(MLSDK)/tools/mabu/data/options/runtime/shared.option $(MLSDK)/tools/mabu/data/options/standard-c++/11.option $(MLSDK)/tools/mabu/data/options/warn/on.option
	$(INFO) \[SimpleGlApp\]\ Compiling\ 'main.cpp'...
	$(ECHO) $(COMPILER_PREFIX) $(CXX) -c $(SimpleGlApp_BASE)/main.cpp -o $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/main.cpp.o -MD -MP -MF $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/main.cpp.d $(SimpleGlApp_CPPFLAGS) $(SimpleGlApp_CXXFLAGS)
	$(ECHO) echo $(SimpleGlApp_BASE)/main.cpp : >> $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/main.cpp.d

-include $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/main.cpp.d

SimpleGlApp-prebuild :: 

SimpleGlApp-postbuild :: 

SimpleGlApp-clean :: 
	$(INFO) Cleaning\ SimpleGlApp...
	$(ECHO) $(RM) -rf $(SimpleGlApp_OUTPUT)/SimpleGlApp $(SimpleGlApp_OUTPUT)/SimpleGlApp.sym $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/load-shader.cpp.o $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/load-shader.cpp.d $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/main.cpp.o $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/main.cpp.d
	$(ECHO) $(RM) -rf $(SimpleGlApp_OUTPUT)/bin/libc++_shared.so $(SimpleGlApp_OUTPUT)//fragment-shader.glsl $(SimpleGlApp_OUTPUT)//vertex-shader.glsl

SimpleGlApp-all :: -make-directories SimpleGlApp-prebuild $(SimpleGlApp_OUTPUT)/SimpleGlApp SimpleGlApp-postbuild

PROJECT=SimpleGlApp

