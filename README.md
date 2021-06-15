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
that have the same build-tooling style as this one.

| project               | status                                                                 | on Hackage                                                        |
| --------------------- | ---------------------------------------------------------------------- | ----------------------------------------------------------------- |
| [hello-haskell]       | [![hello-haskell's Build Status][build-status]][build-log]             | N/A                                                               |
| [LeanCheck]           | [![LeanCheck's Build Status][leancheck-s]][leancheck-l]                | [![LeanCheck on Hackage][leancheck-v]][leancheck-h]               |
| [FitSpec]             | [![FitSpec's Build Status][fitspec-s]][fitspec-l]                      | [![FitSpec on Hackage][fitspec-v]][fitspec-h]                     |
| [Express]             | [![Express's Build Status][express-s]][express-l]                      | [![Express on Hackage][express-v]][express-h]                     |
| [Speculate]           | [![Speculate's Build Status][speculate-s]][speculate-l]                | [![Speculate on Hackage][speculate-v]][speculate-h]               |
| [Extrapolate]         | [![Extrapolate's Build Status][extrapolate-s]][extrapolate-l]          | [![Extrapolate on Hackage][extrapolate-v]][extrapolate-h]         |
| [Conjure]             | [![Conjure's Build Status][conjure-s]][conjure-l]                      | [![code-conjure on Hackage][conjure-v]][conjure-h]                |
| [LeanCheck instances] | [![LeanCheck Instances' Build Status][lc-instances-s]][lc-instances-l] | [![LeanCheck on Hackage][lc-instances-v]][lc-instances-h]         |
| [PercentFormat]       | [![PercentFormat's Build Status][percent-format-s]][percent-format-l]  | [![PercentFormat on Hackage][percent-format-v]][percent-format-h] |
| [TF-leancheck]        | [![TF-leancheck Build Status][tf-leancheck-s]][tf-leancheck-l]         | [![TF-leancheck on Hackage][tf-leancheck-v]][tf-leancheck-h]      |


[hello-haskell]: https://github.com/rudymatela/hello-haskell
[build-log]:     https://github.com/rudymatela/hello-haskell/actions/workflows/build.yml
[build-status]:  https://github.com/rudymatela/hello-haskell/actions/workflows/build.yml/badge.svg

[LeanCheck]:   https://github.com/rudymatela/leancheck
[leancheck-l]: https://github.com/rudymatela/leancheck/actions/workflows/build.yml
[leancheck-s]: https://github.com/rudymatela/leancheck/actions/workflows/build.yml/badge.svg
[leancheck-h]: https://hackage.haskell.org/package/leancheck
[leancheck-v]: https://img.shields.io/hackage/v/leancheck.svg

[FitSpec]:   https://github.com/rudymatela/fitspec
[fitspec-l]: https://github.com/rudymatela/fitspec/actions/workflows/build.yml
[fitspec-s]: https://github.com/rudymatela/fitspec/actions/workflows/build.yml/badge.svg
[fitspec-h]: https://hackage.haskell.org/package/fitspec
[fitspec-v]: https://img.shields.io/hackage/v/fitspec.svg

[Express]:   https://github.com/rudymatela/express
[express-l]: https://github.com/rudymatela/express/actions/workflows/build.yml
[express-s]: https://github.com/rudymatela/express/actions/workflows/build.yml/badge.svg
[express-h]: https://hackage.haskell.org/package/express
[express-v]: https://img.shields.io/hackage/v/express.svg

[Speculate]:   https://github.com/rudymatela/speculate
[speculate-l]: https://github.com/rudymatela/speculate/actions/workflows/build.yml
[speculate-s]: https://github.com/rudymatela/speculate/actions/workflows/build.yml/badge.svg
[speculate-h]: https://hackage.haskell.org/package/speculate
[speculate-v]: https://img.shields.io/hackage/v/speculate.svg

[Extrapolate]:   https://github.com/rudymatela/extrapolate
[extrapolate-l]: https://github.com/rudymatela/extrapolate/actions/workflows/build.yml
[extrapolate-s]: https://github.com/rudymatela/extrapolate/actions/workflows/build.yml/badge.svg
[extrapolate-h]: https://hackage.haskell.org/package/extrapolate
[extrapolate-v]: https://img.shields.io/hackage/v/extrapolate.svg

[Conjure]:   https://github.com/rudymatela/conjure
[conjure-l]: https://github.com/rudymatela/conjure/actions/workflows/build.yml
[conjure-s]: https://github.com/rudymatela/conjure/actions/workflows/build.yml/badge.svg
[conjure-h]: https://hackage.haskell.org/package/code-conjure
[conjure-v]: https://img.shields.io/hackage/v/code-conjure.svg

[LeanCheck Instances]: https://github.com/rudymatela/leancheck-instances
[lc-instances-l]:      https://github.com/rudymatela/leancheck-instances/actions/workflows/build.yml
[lc-instances-s]:      https://github.com/rudymatela/leancheck-instances/actions/workflows/build.yml/badge.svg
[lc-instances-h]:      https://hackage.haskell.org/package/leancheck-instances
[lc-instances-v]:      https://img.shields.io/hackage/v/leancheck-instances.svg

[PercentFormat]:    https://github.com/rudymatela/percent-format
[percent-format-l]: https://github.com/rudymatela/percent-format/actions/workflows/build.yml
[percent-format-s]: https://github.com/rudymatela/percent-format/actions/workflows/build.yml/badge.svg
[percent-format-h]: https://hackage.haskell.org/package/percent-format
[percent-format-v]: https://img.shields.io/hackage/v/percent-format.svg

[test-framework-leancheck]: https://github.com/rudymatela/test-framework-leancheck
[tf-leancheck-l]:           https://github.com/rudymatela/test-framework-leancheck/actions/workflows/build.yml
[tf-leancheck-s]:           https://github.com/rudymatela/test-framework-leancheck/actions/workflows/build.yml/badge.svg
[tf-leancheck-h]:           https://hackage.haskell.org/package/test-framework-leancheck
[tf-leancheck-v]:           https://img.shields.io/hackage/v/test-framework-leancheck.svg

[haskell]: https://www.haskell.org/
[make]:    https://www.gnu.org/software/make/
[cabal]:   https://www.haskell.org/cabal/
[stack]:   https://www.haskellstack.org/
