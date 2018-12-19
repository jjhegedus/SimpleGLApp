if "%GLFW_INCS%"=="" set GLFW_INCS=../path/to/your/glfw-3/include
@rem NOTE: use forward slashes in GLFW_LIBS here (this is a mabu bug)
if "%GLFW_LIBS%"=="" set GLFW_LIBS=../path/to/your/glfw/libs
if "%GLAD_ROOT%"=="" set GLAD_ROOT=../path/to/your/glad

mabu simple_gl_app.package "GLFW_INCS=%GLFW_INCS%" "GLFW_LIBS=%GLFW_LIBS%" "GLAD_ROOT=%GLAD_ROOT%"

