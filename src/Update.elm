module Update exposing (update)

import Browser exposing (..)
import Browser.Navigation as Nav
import Url
import Types exposing (..)
import Utils exposing (..)
import Http exposing (..)
import Dict
import Http.Locale

update : Event -> Model -> (Model, Cmd Event)
update event model = case event of
    Init -> eff
        [ send <| LocaleGet "en"
        ] 
        model

    LocaleGet name -> eff [ Http.Locale.get name ] model

    LocaleGetResult result -> pure <| case result of
        Ok locale ->
            { model
                | locale = locale
                , get = \key -> Maybe.withDefault key <| Dict.get key locale
            }
        Err _ -> model

    NoEvent -> pure model

    LinkClicked urlRequest -> case urlRequest of
        Internal url  -> eff [ Nav.pushUrl model.key <| Url.toString url ] model
        External href -> eff [ Nav.load href                             ] model

    UrlChanged url -> pure { model | url = url }
