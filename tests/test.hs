-- Copyright (c) 2017-2018 Rudy Matela.
-- Distributed under the 3-Clause BSD licence (see the file LICENSE).

import Hello
import Test.LeanCheck
import Data.List (elemIndices)
import System.Exit (exitFailure)

main :: IO ()
main = do
  case elemIndices False (tests 360) of
    [] -> putStrLn "Tests passed."
    is -> do putStrLn ("Failed tests:" ++ show is)
             exitFailure

tests :: Int -> [Bool]
tests n =
  [ True
  , helloWorld == "Hello World!"
  , hello "Haskell" == "Hello Haskell."
  , hello "Curry"   == "Hello Curry."
  , hello "Haskell Curry" == "Hello Haskell Curry."
  , holds n $ \name -> hello name == "Hello " ++ name ++ "."
  ]
