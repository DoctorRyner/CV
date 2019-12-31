module Http.Locale exposing (..)

import Http
import Json.Decode as D
import Types exposing (..)

get : String -> Cmd Event
get localeName = Http.get
    { url = "static/locale/" ++ localeName ++ ".json"
    , expect = Http.expectJson LocaleGetResult <| D.dict D.string
    }
