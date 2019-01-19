{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecursiveDo       #-}
import Reflex.Dom
import Reflex.Extra

bodyElement :: MonadWidget t m => m ()
bodyElement = do
    h2 $ text "Text Input - Read Value on Button Click"
    ti <- textInput $ def & attributes .~ constDyn ("placeholder" =: "keker")
    evClick <- button "Click Me, Please"
    br
    text "Contents of TextInput on last click: "
    let evText = tagPromptlyDyn (value ti) evClick
    dynText =<< holdDyn "" evText

main :: IO ()
main = mainWidget bodyElement
