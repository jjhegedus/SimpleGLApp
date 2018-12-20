#version 430 core
out vec3 color;
uniform mat4 RotationMatrix;

void main(){
  
//  color = vec3(1,0,0);
  color = vec3(RotationMatrix[0][0], RotationMatrix[0][1], RotationMatrix[0][2]);
}