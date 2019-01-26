{-# LANGUAGE OverloadedStrings #-}

module Html.Attr where

import           Data.Map   (Map)
import           Data.Text  (Text)
import           Reflex.Dom

type Attr = Map Text Text

type AttrBuilder = Text -> Attr

class_ :: AttrBuilder
class_ = (=:) "class"
