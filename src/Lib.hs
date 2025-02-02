module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = do
  putStrLn ""
  putStrLn "hello from a statically linked Haskell app!"
