#!/bin/bash
if [ -z "$GLFW_INCS" ]; then 
GLFW_INCS=../path/to/your/glfw-3/include
fi

if [ -z "$GLFW_LIBS" ]; then 
GLFW_LIBS=../path/to/your/glfw/libs
fi

if [ -z "$GLAD_ROOT" ]; then 
GLAD_ROOT=../path/to/your/glad
fi

mabu SimpleGlApp "GLFW_INCS=$GLFW_INCS" "GLFW_LIBS=$GLFW_LIBS" "GLAD_ROOT=$GLAD_ROOT"

