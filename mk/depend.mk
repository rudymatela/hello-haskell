mk/All.o: \
  src/Hello.hs \
  mk/All.hs
mk/Toplibs.o: \
  src/Hello.hs \
  mk/Toplibs.hs
src/Hello.o: \
  src/Hello.hs
tests/test.o: \
  tests/test.hs \
  src/Hello.hs
tests/test: \
  tests/test.hs \
  mk/toplibs
