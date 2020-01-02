module Global where

import           Clay          hiding ((&))
import           Data.Function

css :: Css
css = do
    html ? mempty

    "#languageIcon" ? do
        position absolute
        transform $ translate (-26&px) (1.6&px)

    "#avatarNameLabel" ? marginTop (5&px)
