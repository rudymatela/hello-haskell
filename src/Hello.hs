module Hello
  ( hello
  , helloWorld
  )
where

hello :: String -> String
hello s = "Hello " ++ s ++ "."

helloWorld :: String
helloWorld = "Hello World!"
