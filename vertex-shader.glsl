#version 430 core

layout(location = 0) in vec3 vertexPosition_modelspace;

uniform mat4 RotationMatrix;

void main(){

  gl_Position.xyz = vertexPosition_modelspace;
  gl_Position.w = 1.0;
  gl_Position = RotationMatrix * vec4(vertexPosition_modelspace, 1.0);
}