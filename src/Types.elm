module Types exposing (..)

import Url     exposing (..)
import Browser exposing (..)
import Browser.Navigation as Nav
import Theme   exposing (..)

type Event
    = NoEvent
    | Init
    | LinkClicked UrlRequest
    | UrlChanged Url

type alias Model =
    { key : Nav.Key
    , url : Url
    }

mkDefaultModel : Nav.Key -> Url -> Model
mkDefaultModel key url =
    { key = key
    , url = url
    }
