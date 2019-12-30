module Global where

import           Clay

css :: Css
css = do
    html ? mempty

    ".tabs-sticky" ? do
        position sticky
        top $ px 0
        opacity 0.98
