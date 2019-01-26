{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecursiveDo       #-}

import           Html
import           Reflex.Dom
import qualified Style

title :: HtmlNode t m
title = classed h2 Style.test

titleRaw :: HtmlNode' t m
titleRaw = classed' h2 Style.test

main :: IO ()
main = mainWidgetWithCss Style.css $ do
    title [] $ text "Kek"
    titleRaw $ text "Kek"
