#include "load-shader.h"

#include <string>
#include <fstream>
#include <sstream>
#include <vector>


#include <ml_logging.h>

GLuint load_shaders(const char * vertex_file_path, const char * fragment_file_path) {

  // Create the shaders
  GLuint VertexShaderID = glCreateShader(GL_VERTEX_SHADER);
  GLuint FragmentShaderID = glCreateShader(GL_FRAGMENT_SHADER);

  // Read the Vertex Shader code from the file
  std::string VertexShaderCode; // = "#version330 core\nlayout(location = 0) in vec3 vp;\nvoid main() {\n  gl_Position.xyz = vp;\ngl_Position.w = 1.0;\n}";
  std::ifstream VertexShaderStream(vertex_file_path, std::ios::in);
  if (VertexShaderStream.is_open()) {
    std::stringstream sstr;
    sstr << VertexShaderStream.rdbuf();
    VertexShaderCode = sstr.str();
    ML_LOG(Info, "VertexShaderCode: %s", VertexShaderCode.c_str());
    VertexShaderStream.close();
  }
  else {
    printf("Impossible to open %s. Are you in the right directory ? Don't forget to read the FAQ !\n", vertex_file_path);
    getchar();
    return 0;
  }

  // Read the Fragment Shader code from the file
  std::string FragmentShaderCode; // = "#version 330 core\nout vec3 color;\nvoid main(){\n  color = vec3(1,0,0);\n}";
  std::ifstream FragmentShaderStream(fragment_file_path, std::ios::in);
  if (FragmentShaderStream.is_open()) {
    std::stringstream sstr;
    sstr << FragmentShaderStream.rdbuf();
    FragmentShaderCode = sstr.str();
    ML_LOG(Info, "FragmentShaderCode: %s", FragmentShaderCode.c_str());
    FragmentShaderStream.close();
  }

  GLint Result = GL_FALSE;
  int InfoLogLength = 0;

  // Compile Vertex Shader
  printf("Compiling shader : %s\n", vertex_file_path);
  char const * VertexSourcePointer = VertexShaderCode.c_str();
  glShaderSource(VertexShaderID, 1, &VertexSourcePointer, NULL);
  glCompileShader(VertexShaderID);

  // Check Vertex Shader
  printf("Checking shader : %s\n", fragment_file_path);
  glGetShaderiv(VertexShaderID, GL_COMPILE_STATUS, &Result);
  glGetShaderiv(VertexShaderID, GL_INFO_LOG_LENGTH, &InfoLogLength);
  if (InfoLogLength > 0) {
    std::vector<char> VertexShaderErrorMessage(InfoLogLength + 1);
    glGetShaderInfoLog(VertexShaderID, InfoLogLength, NULL, &VertexShaderErrorMessage[0]);
    printf("%s\n", &VertexShaderErrorMessage[0]);
    ML_LOG(Info, "Checking Vertex Shader: %s", &VertexShaderErrorMessage[0]);
  }

  // Compile Fragment Shader
  printf("Compiling shader : %s\n", fragment_file_path);
  char const * FragmentSourcePointer = FragmentShaderCode.c_str();
  glShaderSource(FragmentShaderID, 1, &FragmentSourcePointer, NULL);
  glCompileShader(FragmentShaderID);

  // Check Fragment Shader
  printf("Checking shader : %s\n", fragment_file_path);
  glGetShaderiv(FragmentShaderID, GL_COMPILE_STATUS, &Result);
  printf("Checking shader : 1\n");
  glGetShaderiv(FragmentShaderID, GL_INFO_LOG_LENGTH, &InfoLogLength);
  printf("Checking shader : 2\n");
  if (InfoLogLength > 0) {
    printf("Checking shader : 3\n");
    std::vector<char> FragmentShaderErrorMessage(InfoLogLength + 1);
    printf("Checking shader : 4\n");
    glGetShaderInfoLog(FragmentShaderID, InfoLogLength, NULL, &FragmentShaderErrorMessage[0]);
    printf("Checking shader : 5\n");
    printf("%s\n", &FragmentShaderErrorMessage[0]);
    ML_LOG(Info, "Checking Fragment Shader: %s", &FragmentShaderErrorMessage[0]);
    printf("Checking shader : 6\n");
  }
  printf("Checking shader : Done\n");

  // Link the program
  printf("Linking program\n");
  GLuint ProgramID = glCreateProgram();
  glAttachShader(ProgramID, VertexShaderID);
  glAttachShader(ProgramID, FragmentShaderID);
  glLinkProgram(ProgramID);

  // Check the program
  glGetProgramiv(ProgramID, GL_LINK_STATUS, &Result);
  glGetProgramiv(ProgramID, GL_INFO_LOG_LENGTH, &InfoLogLength);
  if (InfoLogLength > 0) {
    std::vector<char> ProgramErrorMessage(InfoLogLength + 1);
    glGetProgramInfoLog(ProgramID, InfoLogLength, NULL, &ProgramErrorMessage[0]);
    printf("%s\n", &ProgramErrorMessage[0]);
  }

  glDetachShader(ProgramID, VertexShaderID);
  glDetachShader(ProgramID, FragmentShaderID);

  glDeleteShader(VertexShaderID);
  glDeleteShader(FragmentShaderID);

  return ProgramID;
}