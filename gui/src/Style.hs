{-# LANGUAGE OverloadedStrings #-}

module Style where

import           Clay
import           Css

test :: Text
test = "test"

css :: ByteString
css = Css.style $ do
    class' test $ do
        color $ hex "91FFA9"
