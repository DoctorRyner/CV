module Types exposing (..)

import Url     exposing (..)
import Browser exposing (..)
import Browser.Navigation as Nav
import Types.Locale exposing (..)
import Dict
import Http

type Event
    = NoEvent
    | GetLocale (Result Http.Error Locale)
    | Init
    | LinkClicked UrlRequest
    | UrlChanged Url

type alias Model =
    { key : Nav.Key
    , url : Url
    , locale : Locale
    , get : String -> String
    }

mkDefaultModel : Nav.Key -> Url -> Model
mkDefaultModel key url =
    { key = key
    , url = url
    , locale = Dict.empty
    , get = identity
    }
