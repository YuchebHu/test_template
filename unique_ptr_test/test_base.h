#pragma once

#include "test_interface.h"

class TestBase : public ITest {
public:
  virtual ~TestBase() override = default;
};