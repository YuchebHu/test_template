# Test Template

这是一个基于 C/C++ 的测试模板项目，集成了现代化的测试框架和代码覆盖率工具，帮助开发者快速构建高质量的测试环境。

## 功能特性

- ✅ 自动化测试构建和运行
- ✅ 代码覆盖率检测（支持 gcc/clang）
- ✅ HTML 格式覆盖率报告
- ✅ 分支覆盖率分析
- ✅ 一键清理覆盖率数据

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


## 使用方法

### 1. 配置项目
```bash
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Debug 
```

### 2. 构建项目
```bash
make
```

### 3. 运行测试并生成覆盖率报告
```bash
make Coverage
```

### 4. 查看覆盖率报告
```bash
python -m http.server -d build/lcov_report
```
然后在浏览器中访问 `http://localhost:8000` 查看详细的覆盖率报告。

## CMake 目标说明

### 主要目标
- **`${PROJECT_NAME}`** - 构建主项目
- **`RunForCoverage`** - 运行程序生成覆盖率数据
- **`Coverage`** - 生成完整的 HTML 覆盖率报告
- **`CleanCoverage`** - 清理覆盖率报告和数据文件

### 使用示例
```bash
# 生成覆盖率报告
make Coverage

# 仅运行测试（不生成报告）
make RunForCoverage

# 清理覆盖率数据
make CleanCoverage
```

## 覆盖率报告内容

生成的覆盖率报告包含：
- **行覆盖率** - 每行代码的执行情况
- **分支覆盖率** - 条件分支的覆盖情况
- **函数覆盖率** - 每个函数的调用情况
- **详细源码视图** - 高亮显示已覆盖和未覆盖的代码


## 许可证

本项目采用 MIT 许可证。详见 [LICENSE](LICENSE) 文件。
