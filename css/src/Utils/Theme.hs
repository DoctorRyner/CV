module Utils.Theme where

import qualified Data.Text as T

data ThemeColor = ThemeColor
    { primary
    , secondary
    , primaryBg
    , secondaryBg :: T.Text
    }

data Theme = Theme { name :: T.Text, color :: ThemeColor }

light :: Theme
light = Theme
    { name = "Light Theme"
    , color = ThemeColor
        { primary     = "#9089FF"
        , secondary   = "#ADA8FB"
        , primaryBg   = "#FFFFFF"
        , secondaryBg = "#DEDFDE"
        }
    }

dark :: Theme
dark = Theme
    { name = "Dark Theme"
    , color = ThemeColor
        { primary     = "#786EFF"
        , secondary   = "#534BC1"
        , primaryBg   = "#212121"
        , secondaryBg = "#333333"
        }
    }
