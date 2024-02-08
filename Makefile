# Makefile for hello-haskell
#
# Copyright:   (c) 2015-2024 Rudy Matela
# License:     3-Clause BSD  (see the file LICENSE)
# Maintainer:  Rudy Matela <rudy@matela.com.br>
TESTS = \
  test/test
EGS =
BENCHS =
GHCIMPORTDIRS = src
GHCFLAGS = -O2 $(shell grep -q "Arch Linux" /etc/lsb-release && echo -dynamic)
HUGSIMPORTDIRS = .:./src:./test:/usr/lib/hugs/packages/*
LIB_DEPS = base
INSTALL_DEPS = leancheck==1.0.0

all: mk/toplibs

all-all: mk/All.o

test: $(patsubst %,%.run,$(TESTS)) test-sdist

%.run: %
	./$<

clean: clean-hs
	rm -f $(TESTS) $(BENCHS) $(EGS) mk/toplibs

ghci: mk/All.ghci

hugs: src/Hello.hugs

hugs-test: test/test.runhugs

install:
	@echo "use \`cabal install' instead"

test-sdist:
	./test/sdist

test-via-cabal:
	cabal configure --enable-tests --enable-benchmarks --ghc-options="$(GHCFLAGS) -O0"
	cabal build
	cabal test test

test-via-stack:
	stack test hello:test:test --ghc-options="$(GHCFLAGS) -O0" --system-ghc --no-install-ghc --no-terminal

test-via-everything: test test-via-cabal test-via-stack

legacy-test: # needs ghc-8.8 .. ghc-7.8 installed as such
	make clean  &&  make test GHC=ghc-8.8
	make clean  &&  make test GHC=ghc-8.6
	make clean  &&  make test GHC=ghc-8.4
	make clean  &&  make test GHC=ghc-8.2
	make clean  &&  make test GHC=ghc-8.0
	make clean  &&  make test GHC=ghc-7.10
	make clean  &&  make test GHC=ghc-7.8
	make clean  &&  make test

legacy-test-via-cabal: # needs similarly named cabal wrappers
	cabal clean  &&  cabal-ghc-8.8  configure  &&  cabal-ghc-8.8  test
	cabal clean  &&  cabal-ghc-8.6  configure  &&  cabal-ghc-8.6  test
	cabal clean  &&  cabal-ghc-8.4  configure  &&  cabal-ghc-8.4  test
	cabal clean  &&  cabal-ghc-8.2  configure  &&  cabal-ghc-8.2  test
	cabal clean  &&  cabal-ghc-8.0  configure  &&  cabal-ghc-8.0  test
	cabal clean  &&  cabal-ghc-7.10 configure  &&  cabal-ghc-7.10 test
	cabal clean  &&  cabal-ghc-7.8  configure  &&  cabal-ghc-7.8  test
	cabal clean  &&  cabal test

prepare:
	cabal update
	cabal install $(ALL_DEPS) --lib

prepare-legacy-test:
	cabal update
	cabal-ghc-8.8  install $(ALL_DEPS) --lib
	cabal-ghc-8.6  install $(ALL_DEPS) --lib
	cabal-ghc-8.4  install $(ALL_DEPS) --lib
	cabal-ghc-8.2  install $(ALL_DEPS) --lib
	cabal-ghc-8.0  install $(ALL_DEPS) --lib
	cabal-ghc-7.10 v1-install $(ALL_DEPS)
	cabal-ghc-7.8  v1-install $(ALL_DEPS)
	# (v2-) library installation is supported on GHC 8.0+ only)

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

update-ci-and-mk-on-other-projects: update-ci-on-other-projects update-mk-on-other-projects

update-mk-and-ci-on-other-projects: update-ci-on-other-projects update-mk-on-other-projects

update-mk-on-other-projects:
	./mk/install-on ../leancheck
	./mk/install-on ../fitspec
	./mk/install-on ../express
	./mk/install-on ../speculate
	./mk/install-on ../extrapolate
	./mk/install-on ../conjure
	./mk/install-on ../lc-instances
	./mk/install-on ../percent-format
	./mk/install-on ../hspec-leancheck
	./mk/install-on ../tasty-leancheck
	./mk/install-on ../test-framework-leancheck

update-ci-on-other-projects: \
	../leancheck/.github/workflows/build.yml \
	../fitspec/.github/workflows/build.yml \
	../express/.github/workflows/build.yml \
	../speculate/.github/workflows/build.yml \
	../extrapolate/.github/workflows/build.yml \
	../conjure/.github/workflows/build.yml \
	../lc-instances/.github/workflows/build.yml \
	../hspec-leancheck/.github/workflows/build.yml \
	../tasty-leancheck/.github/workflows/build.yml \
	../test-framework-leancheck/.github/workflows/build.yml \
	../percent-format/.github/workflows/build.yml

%/.github/workflows/build.yml: .github/workflows/build.yml bin/gen-workflows %/*.cabal
	./bin/gen-workflows $*/*.cabal >$@

%/stack.yaml: stack.yaml bin/bump-stack-yaml
	./bin/bump-stack-yaml $@

update-stack-depends-on-other-projects: bump-stack-depends-on-other-projects

bump-stack-depends-on-other-projects: \
	../leancheck/stack.yaml \
	../fitspec/stack.yaml \
	../express/stack.yaml \
	../speculate/stack.yaml \
	../extrapolate/stack.yaml \
	../conjure/stack.yaml \
	../lc-instances/stack.yaml \
	../percent-format/stack.yaml \
	../hspec-leancheck/stack.yaml \
	../tasty-leancheck/stack.yaml \
	../test-framework-leancheck/stack.yaml \
	stack.yaml

update-depends-on-other-projects: make-depend-on-other-projects

make-depend-on-other-projects:
	make -C ../leancheck depend
	make -C ../fitspec depend
	make -C ../express depend
	make -C ../speculate depend
	make -C ../extrapolate depend
	make -C ../conjure depend
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
	make -C ../conjure test-sdist
	make -C ../lc-instances test-sdist
	make -C ../percent-format test-sdist
	make -C ../hspec-leancheck test-sdist
	make -C ../tasty-leancheck test-sdist
	make -C ../test-framework-leancheck test-sdist

include mk/haskell.mk
