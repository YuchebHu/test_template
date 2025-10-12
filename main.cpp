#include <iostream>

#include "test_simple.h"

int main(int, char **) {
  std::cout << "Add(5, 3): " << add(5, 3) << std::endl;
  std::cout << "Sub(4, 2): " << sub(4, 2) << std::endl;

  std::cout << "Hello, from TestTemplate!\n";
}
