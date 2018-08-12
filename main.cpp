#include <iostream>
#include <GLFW/glfw3.h>

int main() {
  if (glfwInit() == GL_FALSE) {
    std::cerr << "Failed to init glfw." << std::endl;
    return 1;
  }

  GLFWwindow *const window(glfwCreateWindow(640, 480, "Hello!", nullptr, nullptr));
  if (window == nullptr) {
    std::cerr << "Failed to create window." << std::endl;
    return 1;
  }
  return 0;
}
