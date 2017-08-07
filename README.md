Hello-Haskell
=============

[![hello-haskell's Build Status][build-status]][build-log]

An example library in [Haskell].  Compilable via:

* [make]: `make && make test`;
* [cabal]: `cabal build && cabal test`;
* [stack]: `stack build && stack test`.

It is also under continuous integration on [Travis].

I mainly use this for playing around with Haskell on Travis
  [without](https://github.com/rudymatela/leancheck/commit/e7f7dcc771ef76a72d287d013e6cd49178295811)
[polluting](https://github.com/rudymatela/leancheck/commit/d0ab594d0eb58e6bb9cb151e5130de6ca2528a67)
      [the](https://github.com/rudymatela/leancheck/commit/8948df094831a5b4b0e64a21fcc4dcf67bb4d375)
   [commit](https://github.com/rudymatela/leancheck/commit/c7f32facdf1dd0e380ac2e56d1540ffeab421b72)
  [history](https://github.com/rudymatela/leancheck/commit/22d6f9ed59d09ec214d907b6000db777661dab5b)
       [of](https://github.com/rudymatela/leancheck/commit/51c3a996f9d7ae0dedcd9068db37fb5dc0ddfac7)
       [my](https://github.com/rudymatela/leancheck/commit/c246f35cbc3a9bb95ef7bbaf81d06352aae9a9c6)
   [actual](https://github.com/rudymatela/leancheck/commit/3838894ed833b3054dbec213a3332686a5e018b7)
  [Haskell](https://github.com/rudymatela/fitspec/commit/e2cca999684bbcb52843f7b7716a6d85c8f5ee73)
[projects.](https://github.com/rudymatela/speculate/commit/56161fde03aea4a0d20c11eb4cee2cffa718ffd0)

Useful links
------------

Useful links:

* [Using Travis CI with Haskell Stack](https://docs.haskellstack.org/en/stable/travis_ci/);
* [Multiple GHC Versions for Travis-CI](https://github.com/hvr/multi-ghc-travis);
* [Stack only supports GHC >= 7.8](https://github.com/commercialhaskell/stack/issues/648);
* [Travis-CI docs: Building a Haskell Project](https://docs.travis-ci.com/user/languages/haskell/)
  (somewhat outdated).

[build-status]: https://travis-ci.org/rudymatela/hello-haskell.svg?branch=master
[build-log]:    https://travis-ci.org/rudymatela/hello-haskell

[haskell]: https://www.haskell.org/
[make]:    https://www.gnu.org/software/make/
[cabal]:   https://www.haskell.org/cabal/
[stack]:   https://www.haskellstack.org/
[travis]:  https://travis-ci.org/
