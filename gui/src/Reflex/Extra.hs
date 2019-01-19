{-# LANGUAGE OverloadedStrings #-}
module Reflex.Extra where

import Reflex.Dom

br :: MonadWidget t m => m ()
br = el "br" blank

h1 :: MonadWidget t m => m () -> m ()
h1 = el "h1"

h2 :: MonadWidget t m => m () -> m ()
h2 = el "h2"

p :: MonadWidget t m => m () -> m ()
p = el "p"

div :: MonadWidget t m => m () -> m ()
div = el "div"