#include "test_simple.h"

static auto kSwitchParams{false};

int add(int a, int b) {
  if (kSwitchParams) {
    return b + a;
  }
  return a + b;
}

int sub(int a, int b) {
  if (kSwitchParams) {
    return b - a;
  }
  return a - b;
}
