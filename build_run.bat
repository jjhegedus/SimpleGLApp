@echo off
setlocal

call build.bat "%*"

@rem normally `mabu --invoke` is sufficient but it does not know about 3rd-party libs
PATH=%GLFW_LIBS%;%PATH%

for /f %%S in ('mabu -q --print-spec') do set BUILD_SPEC=%%S
.out\%BUILD_SPEC%\%SimpleGlApp

