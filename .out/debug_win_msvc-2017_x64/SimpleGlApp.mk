# Generated Makefile -- DO NOT EDIT!

CC=C:/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Community/VC/Tools/MSVC/14.15.26726/bin/HostX64/x64/cl.exe
COMPILER_PREFIX=
CXX=C:/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Community/VC/Tools/MSVC/14.15.26726/bin/HostX64/x64/cl.exe
DEPGEN=C:\Users\jeff\MagicLeap\mlsdk\v0.18.0\tools\mabu\tools\win\depgen.py
HOST=win64
LD=C:/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Community/VC/Tools/MSVC/14.15.26726/bin/HostX64/x64/link.exe
LINKER_PREFIX=
LINKTOUCH=C:/Users/jeff/MagicLeap/mlsdk/v0.18.0/tools/mabu/tools/win/linktouch.sh
MLSDK=C:/Users/jeff/MagicLeap/mlsdk/v0.18.0
PYTHON=C:\Users\jeff\MagicLeap\mlsdk\v0.18.0\tools\python3\python.exe
RM=rm
SPEC=debug_win_msvc-2017_x64
SimpleGlApp_BASE=C:/Projects/Samples/SimpleGlApp
SimpleGlApp_CFLAGS=-Gm- -MDd -ZI -Od -W2
SimpleGlApp_CPPFLAGS=-IC:/Projects/third-party/glad/include -IC:/Projects/third-party/glfw/include -I$(MLSDK)/include -IC:/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Community/VC/Tools/MSVC/14.15.26726/ATLMFC/include -IC:/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Community/VC/Tools/MSVC/14.15.26726/include -IC:/Program\ Files\ \(x86\)/Windows\ Kits/NETFXSDK/4.6.1/include/um -IC:/Program\ Files\ \(x86\)/Windows\ Kits/10/include/10.0.17134.0/ucrt -IC:/Program\ Files\ \(x86\)/Windows\ Kits/10/include/10.0.17134.0/shared -IC:/Program\ Files\ \(x86\)/Windows\ Kits/10/include/10.0.17134.0/um -IC:/Program\ Files\ \(x86\)/Windows\ Kits/10/include/10.0.17134.0/winrt -IC:/Program\ Files\ \(x86\)/Windows\ Kits/10/include/10.0.17134.0/cppwinrt -IC:/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Community/VC/Tools/MSVC/14.15.26726/include -IC:/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Community/VC/Tools/MSVC/14.15.26726/atlmfc/include -IC:/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Community/VC/Auxiliary/VS/include -IC:/Program\ Files\ \(x86\)/Windows\ Kits/10/Include/10.0.10240.0/ucrt -IC:/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Community/VC/Auxiliary/VS/UnitTest/include -IC:/Program\ Files\ \(x86\)/Windows\ Kits/8.1/Include/um -IC:/Program\ Files\ \(x86\)/Windows\ Kits/8.1/Include/shared -IC:/Program\ Files\ \(x86\)/Windows\ Kits/8.1/Include/winrt -IC:/Program\ Files\ \(x86\)/Windows\ Kits/NETFXSDK/4.6.1/Include/um -DML_WINDOWS -DUSE_GLFW=1
SimpleGlApp_CXXFLAGS=-Gm- -MDd -ZI -Od -EHsc -W2
SimpleGlApp_LDFLAGS=-debug
SimpleGlApp_LIBS=-libpath:C:/Projects/third-party/glfw/lib-vc2015 -libpath:$(MLSDK)/lib/win64 -libpath:C:/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Community/VC/Tools/MSVC/14.15.26726/ATLMFC/lib/x64 -libpath:C:/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Community/VC/Tools/MSVC/14.15.26726/lib/x64 -libpath:C:/Program\ Files\ \(x86\)/Windows\ Kits/NETFXSDK/4.6.1/lib/um/x64 -libpath:C:/Program\ Files\ \(x86\)/Windows\ Kits/10/lib/10.0.17134.0/ucrt/x64 -libpath:C:/Program\ Files\ \(x86\)/Windows\ Kits/10/lib/10.0.17134.0/um/x64 -libpath:C:/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Community/VC/Tools/MSVC/14.15.26726/atlmfc/lib/x64 -libpath:C:/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Community/VC/Auxiliary/VS/lib/x64 -libpath:C:/Program\ Files\ \(x86\)/Windows\ Kits/10/lib/10.0.10240.0/ucrt/x64 -libpath:C:/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2017/Community/VC/Auxiliary/VS/UnitTest/lib -libpath:C:/Program\ Files\ \(x86\)/Windows\ Kits/8.1/lib/winv6.3/um/x64 -libpath:C:/Program\ Files\ \(x86\)/Windows\ Kits/NETFXSDK/4.6.1/Lib/um/x64 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib glfw3dll.lib OpenGL32.lib ml_graphics.lib ml_perception_client.lib ml_input.lib ml_lifecycle.lib ml_ext_logging.lib
SimpleGlApp_OUTPUT=$(SimpleGlApp_BASE)/.out/$(SPEC)

$(SimpleGlApp_OUTPUT)/SimpleGlApp.exe : $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/load-shader.cpp.o $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/main.cpp.o $(SimpleGlApp_OUTPUT)/glad_wgl.c-178a01748c12a876.o $(SimpleGlApp_OUTPUT)/glad.c-178a01748c12a876.o $(SimpleGlApp_BASE)/SimpleGlApp.mabu C:/Projects/Samples/SimpleGlApp/glad.comp C:/Projects/Samples/SimpleGlApp/glfw.comp $(MLSDK)/.metadata/components/ml_sdk.comp $(MLSDK)/.metadata/components/ml_sdk_common.comp $(MLSDK)/tools/mabu/data/components/OpenGL.comp $(MLSDK)/tools/mabu/data/components/stdc++.comp $(MLSDK)/tools/mabu/data/configs/debug.config $(MLSDK)/tools/mabu/data/options/debug/on.option $(MLSDK)/tools/mabu/data/options/exceptions/on.option $(MLSDK)/tools/mabu/data/options/magicleap.option $(MLSDK)/tools/mabu/data/options/optimize/off.option $(MLSDK)/tools/mabu/data/options/package/debuggable/on.option $(MLSDK)/tools/mabu/data/options/runtime/shared.option $(MLSDK)/tools/mabu/data/options/standard-c++/11.option $(MLSDK)/tools/mabu/data/options/warn/on.option
	$(INFO) \[SimpleGlApp\]\ Linking\ program\ 'SimpleGlApp.exe'...
	$(ECHO) cd $(SimpleGlApp_OUTPUT) && $(LINKTOUCH) $(SimpleGlApp_OUTPUT)/SimpleGlApp.exe $(LINKER_PREFIX) $(LD) -nologo -out:SimpleGlApp.exe -machine:x64 obj.SimpleGlApp/load-shader.cpp.o obj.SimpleGlApp/main.cpp.o glad_wgl.c-178a01748c12a876.o glad.c-178a01748c12a876.o $(SimpleGlApp_LIBS) $(SimpleGlApp_LDFLAGS)

$(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/load-shader.cpp.o : $(SimpleGlApp_BASE)/load-shader.cpp $(SimpleGlApp_BASE)/SimpleGlApp.mabu C:/Projects/Samples/SimpleGlApp/glad.comp C:/Projects/Samples/SimpleGlApp/glfw.comp $(MLSDK)/.metadata/components/ml_sdk.comp $(MLSDK)/.metadata/components/ml_sdk_common.comp $(MLSDK)/tools/mabu/data/components/OpenGL.comp $(MLSDK)/tools/mabu/data/components/stdc++.comp $(MLSDK)/tools/mabu/data/configs/debug.config $(MLSDK)/tools/mabu/data/options/debug/on.option $(MLSDK)/tools/mabu/data/options/exceptions/on.option $(MLSDK)/tools/mabu/data/options/magicleap.option $(MLSDK)/tools/mabu/data/options/optimize/off.option $(MLSDK)/tools/mabu/data/options/package/debuggable/on.option $(MLSDK)/tools/mabu/data/options/runtime/shared.option $(MLSDK)/tools/mabu/data/options/standard-c++/11.option $(MLSDK)/tools/mabu/data/options/warn/on.option
	$(INFO) \[SimpleGlApp\]\ Compiling\ 'load-shader.cpp'...
	$(ECHO) $(PYTHON) $(DEPGEN) $(SimpleGlApp_BASE)/load-shader.cpp $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/load-shader.cpp.d $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/load-shader.cpp.o -i C:/Projects/third-party/glad/include -i C:/Projects/third-party/glfw/include -i $(MLSDK)/include -d ML_WINDOWS -d USE_GLFW=1
	$(ECHO) $(COMPILER_PREFIX) $(CXX) -nologo -TP -c $(SimpleGlApp_BASE)/load-shader.cpp -Fo$(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/load-shader.cpp.o -FS -Fd$(SimpleGlApp_OUTPUT)/SimpleGlApp.pdb $(SimpleGlApp_CPPFLAGS) $(SimpleGlApp_CXXFLAGS)

-include $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/load-shader.cpp.d
$(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/main.cpp.o : $(SimpleGlApp_BASE)/main.cpp $(SimpleGlApp_BASE)/SimpleGlApp.mabu C:/Projects/Samples/SimpleGlApp/glad.comp C:/Projects/Samples/SimpleGlApp/glfw.comp $(MLSDK)/.metadata/components/ml_sdk.comp $(MLSDK)/.metadata/components/ml_sdk_common.comp $(MLSDK)/tools/mabu/data/components/OpenGL.comp $(MLSDK)/tools/mabu/data/components/stdc++.comp $(MLSDK)/tools/mabu/data/configs/debug.config $(MLSDK)/tools/mabu/data/options/debug/on.option $(MLSDK)/tools/mabu/data/options/exceptions/on.option $(MLSDK)/tools/mabu/data/options/magicleap.option $(MLSDK)/tools/mabu/data/options/optimize/off.option $(MLSDK)/tools/mabu/data/options/package/debuggable/on.option $(MLSDK)/tools/mabu/data/options/runtime/shared.option $(MLSDK)/tools/mabu/data/options/standard-c++/11.option $(MLSDK)/tools/mabu/data/options/warn/on.option
	$(INFO) \[SimpleGlApp\]\ Compiling\ 'main.cpp'...
	$(ECHO) $(PYTHON) $(DEPGEN) $(SimpleGlApp_BASE)/main.cpp $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/main.cpp.d $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/main.cpp.o -i C:/Projects/third-party/glad/include -i C:/Projects/third-party/glfw/include -i $(MLSDK)/include -d ML_WINDOWS -d USE_GLFW=1
	$(ECHO) $(COMPILER_PREFIX) $(CXX) -nologo -TP -c $(SimpleGlApp_BASE)/main.cpp -Fo$(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/main.cpp.o -FS -Fd$(SimpleGlApp_OUTPUT)/SimpleGlApp.pdb $(SimpleGlApp_CPPFLAGS) $(SimpleGlApp_CXXFLAGS)

-include $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/main.cpp.d
$(SimpleGlApp_OUTPUT)/glad_wgl.c-178a01748c12a876.o : C:/Projects/third-party/glad/src/glad_wgl.c $(SimpleGlApp_BASE)/SimpleGlApp.mabu C:/Projects/Samples/SimpleGlApp/glad.comp C:/Projects/Samples/SimpleGlApp/glfw.comp $(MLSDK)/.metadata/components/ml_sdk.comp $(MLSDK)/.metadata/components/ml_sdk_common.comp $(MLSDK)/tools/mabu/data/components/OpenGL.comp $(MLSDK)/tools/mabu/data/components/stdc++.comp $(MLSDK)/tools/mabu/data/configs/debug.config $(MLSDK)/tools/mabu/data/options/debug/on.option $(MLSDK)/tools/mabu/data/options/exceptions/on.option $(MLSDK)/tools/mabu/data/options/magicleap.option $(MLSDK)/tools/mabu/data/options/optimize/off.option $(MLSDK)/tools/mabu/data/options/package/debuggable/on.option $(MLSDK)/tools/mabu/data/options/runtime/shared.option $(MLSDK)/tools/mabu/data/options/standard-c++/11.option $(MLSDK)/tools/mabu/data/options/warn/on.option
	$(INFO) \[SimpleGlApp\]\ Compiling\ 'glad_wgl.c'...
	$(ECHO) $(PYTHON) $(DEPGEN) C:/Projects/third-party/glad/src/glad_wgl.c $(SimpleGlApp_OUTPUT)/glad_wgl.c-178a01748c12a876.d $(SimpleGlApp_OUTPUT)/glad_wgl.c-178a01748c12a876.o -i C:/Projects/third-party/glad/include -i C:/Projects/third-party/glfw/include -i $(MLSDK)/include -d ML_WINDOWS -d USE_GLFW=1
	$(ECHO) $(COMPILER_PREFIX) $(CC) -nologo -TC -c C:/Projects/third-party/glad/src/glad_wgl.c -Fo$(SimpleGlApp_OUTPUT)/glad_wgl.c-178a01748c12a876.o -FS -Fd$(SimpleGlApp_OUTPUT)/SimpleGlApp.pdb $(SimpleGlApp_CPPFLAGS) $(SimpleGlApp_CFLAGS)

-include $(SimpleGlApp_OUTPUT)/glad_wgl.c-178a01748c12a876.d
$(SimpleGlApp_OUTPUT)/glad.c-178a01748c12a876.o : C:/Projects/third-party/glad/src/glad.c $(SimpleGlApp_BASE)/SimpleGlApp.mabu C:/Projects/Samples/SimpleGlApp/glad.comp C:/Projects/Samples/SimpleGlApp/glfw.comp $(MLSDK)/.metadata/components/ml_sdk.comp $(MLSDK)/.metadata/components/ml_sdk_common.comp $(MLSDK)/tools/mabu/data/components/OpenGL.comp $(MLSDK)/tools/mabu/data/components/stdc++.comp $(MLSDK)/tools/mabu/data/configs/debug.config $(MLSDK)/tools/mabu/data/options/debug/on.option $(MLSDK)/tools/mabu/data/options/exceptions/on.option $(MLSDK)/tools/mabu/data/options/magicleap.option $(MLSDK)/tools/mabu/data/options/optimize/off.option $(MLSDK)/tools/mabu/data/options/package/debuggable/on.option $(MLSDK)/tools/mabu/data/options/runtime/shared.option $(MLSDK)/tools/mabu/data/options/standard-c++/11.option $(MLSDK)/tools/mabu/data/options/warn/on.option
	$(INFO) \[SimpleGlApp\]\ Compiling\ 'glad.c'...
	$(ECHO) $(PYTHON) $(DEPGEN) C:/Projects/third-party/glad/src/glad.c $(SimpleGlApp_OUTPUT)/glad.c-178a01748c12a876.d $(SimpleGlApp_OUTPUT)/glad.c-178a01748c12a876.o -i C:/Projects/third-party/glad/include -i C:/Projects/third-party/glfw/include -i $(MLSDK)/include -d ML_WINDOWS -d USE_GLFW=1
	$(ECHO) $(COMPILER_PREFIX) $(CC) -nologo -TC -c C:/Projects/third-party/glad/src/glad.c -Fo$(SimpleGlApp_OUTPUT)/glad.c-178a01748c12a876.o -FS -Fd$(SimpleGlApp_OUTPUT)/SimpleGlApp.pdb $(SimpleGlApp_CPPFLAGS) $(SimpleGlApp_CFLAGS)

-include $(SimpleGlApp_OUTPUT)/glad.c-178a01748c12a876.d

SimpleGlApp-prebuild :: 

SimpleGlApp-postbuild :: 

SimpleGlApp-clean :: 
	$(INFO) Cleaning\ SimpleGlApp...
	$(ECHO) $(RM) -rf $(SimpleGlApp_OUTPUT)/SimpleGlApp.exe $(SimpleGlApp_OUTPUT)/SimpleGlApp.ilk $(SimpleGlApp_OUTPUT)/SimpleGlApp.idb $(SimpleGlApp_OUTPUT)/SimpleGlApp.pdb $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/load-shader.cpp.o $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/load-shader.cpp.d $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/main.cpp.o
	$(ECHO) $(RM) -rf $(SimpleGlApp_OUTPUT)/obj.SimpleGlApp/main.cpp.d $(SimpleGlApp_OUTPUT)/glad_wgl.c-178a01748c12a876.o $(SimpleGlApp_OUTPUT)/glad_wgl.c-178a01748c12a876.d $(SimpleGlApp_OUTPUT)/glad.c-178a01748c12a876.o $(SimpleGlApp_OUTPUT)/glad.c-178a01748c12a876.d $(SimpleGlApp_OUTPUT)//fragment-shader.glsl
	$(ECHO) $(RM) -rf $(SimpleGlApp_OUTPUT)//vertex-shader.glsl

SimpleGlApp-all :: -make-directories SimpleGlApp-prebuild $(SimpleGlApp_OUTPUT)/SimpleGlApp.exe SimpleGlApp-postbuild

PROJECT=SimpleGlApp

