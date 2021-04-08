# Makefile for hello-haskell
#
# Copyright:   (c) 2015-2021 Rudy Matela
# License:     3-Clause BSD  (see the file LICENSE)
# Maintainer:  Rudy Matela <rudy@matela.com.br>
TESTS = \
  test/test
EGS =
BENCHS =
GHCIMPORTDIRS = src
GHCFLAGS = -O2 -package leancheck $(shell grep -q "Arch Linux" /etc/lsb-release && echo -dynamic)
HADDOCKFLAGS = --no-print-missing-docs
HUGSIMPORTDIRS = .:./src:./test:/usr/lib/hugs/packages/*
LIB_DEPS = base
ALL_DEPS = $(LIB_DEPS) leancheck

all: mk/toplibs

all-all: mk/All.o

test: $(patsubst %,%.run,$(TESTS)) test-sdist

%.run: %
	./$<

clean: clean-hi-o clean-haddock
	rm -f $(TESTS) $(BENCHS) $(EGS) mk/toplibs

ghci: mk/All.ghci

hugs: src/Hello.hugs

hugs-test: test/test.runhugs

install:
	@echo "use \`cabal install' instead"

test-sdist:
	./test/sdist

test-via-cabal:
	cabal test

test-via-stack:
	stack test

test-via-everything: test test-via-cabal test-via-stack

legacy-test: # needs ghc-8.0 .. ghc-7.8 installed as such
	make clean  &&  make test GHC=ghc-8.2  GHCFLAGS="-Werror -dynamic"
	make clean  &&  make test GHC=ghc-8.0  GHCFLAGS="-Werror -dynamic"
	make clean  &&  make test GHC=ghc-7.10 GHCFLAGS="-Werror -dynamic"
	make clean  &&  make test GHC=ghc-7.8  GHCFLAGS="-Werror -dynamic"
	make clean  &&  make test

legacy-test-via-cabal: # needs similarly named cabal wrappers
	cabal clean  &&  cabal-ghc-8.2  configure  &&  cabal-ghc-8.2  test
	cabal clean  &&  cabal-ghc-8.0  configure  &&  cabal-ghc-8.0  test
	cabal clean  &&  cabal-ghc-7.10 configure  &&  cabal-ghc-7.10 test
	cabal clean  &&  cabal-ghc-7.8  configure  &&  cabal-ghc-7.8  test
	cabal clean  &&  cabal test

prepare:
	cabal update  &&  cabal install $(ALL_DEPS)

prepare-legacy-test:
	cabal-ghc-8.2  update  &&  cabal-ghc-8.2  install $(ALL_DEPS)
	cabal-ghc-8.0  update  &&  cabal-ghc-8.0  install $(ALL_DEPS)
	cabal-ghc-7.10 update  &&  cabal-ghc-7.10 install $(ALL_DEPS)
	cabal-ghc-7.8  update  &&  cabal-ghc-7.8  install $(ALL_DEPS)

hlint:
	hlint \
	  --ignore "Use import/export shortcut" \
	  --ignore "Redundant bracket" \
	  .

# NOTE: (very hacky!) the following target allows parallel compilation (-jN) of
# eg and test programs so long as they don't share dependencies _not_ stored
# in src/ and test/.  Runnable binaries should depend on mk/toplibs instead of
# actual Haskell source files
mk/toplibs: mk/Toplibs.o
	touch mk/toplibs

update-mk-on-other-projects:
	./mk/install-on ../leancheck
	./mk/install-on ../fitspec
	./mk/install-on ../express
	./mk/install-on ../speculate
	./mk/install-on ../extrapolate
	./mk/install-on ../lc-instances
	./mk/install-on ../percent-format
	./mk/install-on ../hspec-leancheck
	./mk/install-on ../tasty-leancheck
	./mk/install-on ../test-framework-leancheck

make-depend-on-other-projects:
	make -C ../leancheck depend
	make -C ../fitspec depend
	make -C ../express depend
	make -C ../speculate depend
	make -C ../extrapolate depend
	make -C ../lc-instances depend
	make -C ../percent-format depend
	make -C ../hspec-leancheck depend
	make -C ../tasty-leancheck depend
	make -C ../test-framework-leancheck depend

make-test-sdist-on-other-projects:
	make -C ../leancheck test-sdist
	make -C ../fitspec test-sdist
	make -C ../express test-sdist
	make -C ../speculate test-sdist
	make -C ../extrapolate test-sdist
	make -C ../lc-instances test-sdist
	make -C ../percent-format test-sdist
	make -C ../hspec-leancheck test-sdist
	make -C ../tasty-leancheck test-sdist
	make -C ../test-framework-leancheck test-sdist

include mk/haskell.mk
