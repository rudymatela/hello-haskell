mk/All.o: \
  src/Hello.hs \
  mk/All.hs
mk/Toplibs.o: \
  src/Hello.hs \
  mk/Toplibs.hs
src/Hello.o: \
  src/Hello.hs
test/test.o: \
  test/test.hs \
  src/Hello.hs
test/test: \
  test/test.hs \
  mk/toplibs
