# cmake_example

Install [Git](https://git-scm.com/download/win) and [CMake](https://cmake.org/download/) and issue the following in a windows cmd:

```bat
git clone https://github.com/tarc/cmake_example.git
cd cmake_example
git submodule update --init
gen
build
run
```

This is supposed to produce the following output:

```text
Microsoft(R) Build Engine versão 16.5.0+d4cbfca49 para .NET Framework
Copyright (C) Microsoft Corporation. Todos os direitos reservados.

  cmake_test.vcxproj -> XXX\cmake_example\build\Debug\cmake_test.exe
  Tool mayabatch.exe has timeout 40
  Tool meshbuilder_*.exe has timeout 10
  Building Custom Rule XXX/cmake_example/CMakeLists.txt
```

Observe that the lines:
```text
  Tool mayabatch.exe has timeout 40
  Tool meshbuilder_*.exe has timeout 10
```

are the output of `main.cpp`.
