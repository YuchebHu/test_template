#include "test_combination.h"


TestCombination::TestCombination(
  std::unique_ptr<ITest> t1,
  std::unique_ptr<ITest> t2)
    : t1(std::move(t1)), t2(std::move(t2)) {}