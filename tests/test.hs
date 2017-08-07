-- Copyright (c) 2017 Rudy Matela.
-- Distributed under the 3-Clause BSD licence (see the file LICENSE).

import Hello

main :: IO ()
main = do
  if testsOK
    then putStrLn "+++ Tests passed."
    else putStrLn "*** Tests failed!"

testsOK :: Bool
testsOK = and
  [ helloWorld == "Hello World!"
  , hello "Haskell" == "Hello Haskell"
  , hello "Curry"   == "Hello Curry"
  , hello "Haskell Curry" == "Hello Haskell Curry"
  ]
