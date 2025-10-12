# Test Template

这是一个基于 C/C++ 的测试模板项目，集成了现代化的测试框架和代码覆盖率工具，帮助开发者快速构建高质量的测试环境。

## 功能特性

- ✅ 基于 CMake 的跨平台构建系统
- ✅ 代码覆盖率分析（gcov + lcov）
- ✅ LLVM Clang 工具链支持
- ✅ HTML 格式的覆盖率报告

## 环境要求

### 必需组件
- **cmake** (3.10 或更高版本)
- **gcc** **g++** (支持 gcov)
- **lcov** (覆盖率报告生成)
- **llvm clang** (包括 libclang-rt 和 llvm-cov)

### 安装依赖

#### Ubuntu/Debian
```bash
sudo apt update
sudo apt install cmake gcc g++ lcov clang llvm libclang-rt-dev
```

## 许可证

本项目采用 MIT 许可证。详见 [LICENSE](LICENSE) 文件。
