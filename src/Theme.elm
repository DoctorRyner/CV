module Theme exposing (..)

type alias ThemeColor =
    { primary     : String
    , secondary   : String
    , primaryBg   : String
    , secondaryBg : String
    }

type alias Theme = { name : String, color : ThemeColor }

light : Theme
light =
    { name = "Light Theme"
    , color =
        { primary     = "#9089FF"
        , secondary   = "#ADA8FB"
        , primaryBg   = "#FFFFFF"
        , secondaryBg = "#DEDFDE"
        }
    }

dark : Theme
dark =
    { name = "dark Theme"
    , color =
        { primary     = "#786EFF"
        , secondary   = "#534BC1"
        , primaryBg   = "#212121"
        , secondaryBg = "#333333"
        }
    }
