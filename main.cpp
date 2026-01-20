#include <iostream>
#include <memory>

#include "test_base.h"
#include "test_combination.h"
#include "test_interface.h"
#include "test_simple.h"

int main(int, char **) {
  std::unique_ptr<ITest> t1 = std::make_unique<TestBase>();
  std::unique_ptr<ITest> t2 = std::make_unique<TestBase>();

  std::unique_ptr<ITest> tc =
      std::make_unique<TestCombination>
      (std::move(t1), std::move(t2));

  std::cout << "Add(5, 3): " << add(5, 3) << std::endl;
  std::cout << "Sub(4, 2): " << sub(4, 2) << std::endl;

  std::cout << "Hello, from TestTemplate!\n";
}
