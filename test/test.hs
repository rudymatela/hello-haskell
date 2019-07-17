-- Copyright (c) 2017-2019 Rudy Matela.
-- Distributed under the 3-Clause BSD licence (see the file LICENSE).
{-# LANGUAGE CPP #-}
import Hello
#ifndef __HUGS__
-- TODO: release new LeanCheck to make this work
import Test.LeanCheck
#endif
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
#ifndef __HUGS__
  , holds n $ \name -> hello name == "Hello " ++ name ++ "."
#endif
  ]
