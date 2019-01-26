{-# LANGUAGE OverloadedStrings #-}

module Css
       ( module Css
       , ByteString
       , Text
       ) where

import           Clay
import           Data.ByteString    (ByteString)
import           Data.Text          (Text)
import qualified Data.Text          as Text
import           Data.Text.Encoding (encodeUtf8)
import           Data.Text.Lazy     (toStrict)

class' :: Text -> Css -> Css
class' = (?) . element . (<>) "."

style :: Css -> ByteString
style = encodeUtf8 . toStrict . render

style' :: Css -> Text
style' = toStrict . render

hex :: Text -> Color
hex hexCode = other . value $ if Text.head hexCode /= '#' then "#" <> hexCode else hexCode

borderRadius' :: Size LengthUnit -> Css
borderRadius' val = borderRadius val val val val

