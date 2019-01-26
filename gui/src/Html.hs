{-# LANGUAGE OverloadedStrings    #-}
{-# LANGUAGE RankNTypes        #-}

module Html where

import           Data.Map       (Map)
import           Data.Text      (Text)
import           Html.Attr      (class_)
import           Reflex.Dom

type HtmlNode t m    = MonadWidget t m => [Map Text Text] -> m () -> m ()
type Html t m        = MonadWidget t m => m ()
type HtmlNode' t m   = MonadWidget t m => m () -> m ()

classed :: HtmlNode t m -> Text -> HtmlNode t m
classed elo cn = \attr -> elo (attr <> [class_ cn])

classed' :: HtmlNode t m -> Text -> HtmlNode' t m
classed' elo cn = \x -> elo [class_ cn] x

__ :: MonadWidget t m => m ()
__ = blank

br :: Html t m
br = el "br" __

html :: Text -> [Map Text Text] -> m () -> Html t m
html tagName [] childs    = el tagName childs
html tagName attrs childs = elAttr tagName (foldr1 (<>) attrs) childs

p' :: HtmlNode t m
p' = html "p"

p :: HtmlNode' t m
p = html "p" []

h1 :: HtmlNode t m
h1 = html "h1"

h1' :: HtmlNode' t m
h1' = html "h1" []

h2 :: HtmlNode t m
h2 = html "h2"

h2' :: HtmlNode' t m
h2' = html "h2" []

h3 :: HtmlNode t m
h3 = html "h3"

h3' :: HtmlNode' t m
h3' = html "h3" []

h4 :: HtmlNode t m
h4 = html "h4"

h4' :: HtmlNode' t m
h4' = html "h4" []

h5 :: HtmlNode t m
h5 = html "h5"

h5' :: HtmlNode' t m
h5' = html "h5" []

h6 :: HtmlNode t m
h6 = html "h1"

h6' :: HtmlNode' t m
h6' = html "h6" []
