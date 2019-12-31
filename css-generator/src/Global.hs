module Global where

import           Clay

css :: Css
css = do
    html ? mempty

    header ? do
        position sticky
        top $ px 0
        zIndex 1
        opacity 0.98

    "#homeAvatar" ? mempty
        -- maxWidth $ px 300
        -- width $ pct 100
        -- minHeight $ px 300
