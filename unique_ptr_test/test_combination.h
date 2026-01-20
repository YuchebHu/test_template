#pragma once

#include <memory>

#include "test_interface.h"

class TestCombination : public ITest {
public:
  TestCombination(std::unique_ptr<ITest> t1, std::unique_ptr<ITest> t2);

private:
  std::unique_ptr<ITest> t1;
  std::unique_ptr<ITest> t2;
};