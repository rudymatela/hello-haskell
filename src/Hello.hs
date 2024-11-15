-- |
-- Module      : Hello
-- Copyright   : (c) 2017 Rudy Matela
-- License     : 3-Clause BSD  (see the file LICENSE)
-- Maintainer  : Rudy Matela <rudy@matela.com.br>
--
-- This is just an example Haskell module.
module Hello
  ( hello
  , helloWorld
  )
where

hello :: String -> String
hello s = "Hello " ++ s ++ "."

helloWorld :: String
helloWorld = "Hello World!"
