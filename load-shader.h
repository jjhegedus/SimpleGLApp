#pragma once


#if USE_GLFW

#include <glad/glad.h>
#include <GLFW/glfw3.h>

#else

#ifndef EGL_EGLEXT_PROTOTYPES
#define EGL_EGLEXT_PROTOTYPES
#endif

#include <EGL/egl.h>
#include <EGL/eglext.h>

#ifndef GL_GLEXT_PROTOTYPES
#define GL_GLEXT_PROTOTYPES
#endif

#include <GLES3/gl3.h>
#include <GLES3/gl3ext.h>

#endif

GLuint load_shaders(const char * vertex_file_path, const char * fragment_file_path);