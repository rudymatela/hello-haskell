Hello-Haskell
=============

[![hello-haskell's Build Status][build-status]][build-log]

An example library in [Haskell].  Compilable via:

* [make]: `make && make test`;
* [cabal]: `cabal build && cabal test`;
* [stack]: `stack build && stack test`.


### Dashboard

This project doubles as a GitHub actions dashboard
for the other Haskell projects I maintain
that have the same "tooling-style" as this one.

| project         | status                                                     |
| --------------- | ---------------------------------------------------------- |
| [hello-haskell] | [![hello-haskell's Build Status][build-status]][build-log] |
| [LeanCheck]     | [![LeanCheck's Build Status][leancheck-s]][leancheck-l]    |
| [FitSpec]       | [![FitSpec's Build Status][fitspec-s]][fitspec-l]          |


[hello-haskell]: https://github.com/rudymatela/hello-haskell
[build-log]:     https://github.com/rudymatela/hello-haskell/actions/workflows/build.yml
[build-status]:  https://github.com/rudymatela/hello-haskell/actions/workflows/build.yml/badge.svg

[LeanCheck]:   https://github.com/rudymatela/leancheck
[leancheck-l]: https://github.com/rudymatela/leancheck/actions/workflows/build.yml
[leancheck-s]: https://github.com/rudymatela/leancheck/actions/workflows/build.yml/badge.svg
[LeanCheck on Hackage]: https://hackage.haskell.org/package/leancheck

[FitSpec]:   https://github.com/rudymatela/fitspec
[fitspec-l]: https://github.com/rudymatela/fitspec/actions/workflows/build.yml
[fitspec-s]: https://github.com/rudymatela/fitspec/actions/workflows/build.yml/badge.svg
[FitSpec on Hackage]: https://hackage.haskell.org/package/fitspec

[haskell]: https://www.haskell.org/
[make]:    https://www.gnu.org/software/make/
[cabal]:   https://www.haskell.org/cabal/
[stack]:   https://www.haskellstack.org/
