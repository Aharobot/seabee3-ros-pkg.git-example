#!/usr/bin/make
builddir="build"

all:
	@echo "making folder $(builddir)"
	@-mkdir $(builddir)
	@cd build && cmake .. && make

%:
	@cd build && make $@

clean:
	@cd build && make clean && cd .. && rm -rf bin build
