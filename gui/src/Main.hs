{-# LANGUAGE OverloadedStrings #-}
module Main where

import Reflex.Dom

main :: IO ()
main =  mainWidget $ el "p" $ text "Hello, Haskell and Reflex"
