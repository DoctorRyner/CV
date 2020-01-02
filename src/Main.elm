module Main exposing (main)

import Browser
import Browser.Navigation as Nav
import Types                     exposing (..)
import Url                       exposing (Url)
import View
import Update
import Subscriptions
import Utils                     exposing (..)

init : String -> Url -> Nav.Key -> (Model, Cmd Event)
init savedLocaleName url key = eff
    [ send <| LocaleGet savedLocaleName
    ] <| mkDefaultModel key url

main : Program String Model Event
main = Browser.application
    { init          = init
    , view          = View.view
    , update        = Update.update
    , subscriptions = Subscriptions.subscriptions
    , onUrlChange   = UrlChanged
    , onUrlRequest  = LinkClicked
    }
