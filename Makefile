CXX = g++ # >2012 >gcc
CXXFLAGS = -O0 -ggdb -std=c++0x # -Wall -Wextra -Werror
LLVMFLAGS = `llvm-config --cppflags --ldflags --libs core jit native asmparser asmprinter linker` -ldl
SOURCES = UI/console.cpp
default:hylas

hylas:
	$(CXX) UI/console.cpp -o hylas.o $(CXXFLAGS) $(LLVMFLAGS)

clean:
	rm hylas.o

install:
	