module Update exposing (update)

import Browser exposing (..)
import Browser.Navigation as Nav
import Url
import Types exposing (..)
import Utils exposing (..)
import Http exposing (..)
import Dict
import Http.Locale

import Port.LocalStorage as LocalStorage

update : Event -> Model -> (Model, Cmd Event)
update event model = case event of
    ApplyChangeRouteAnimation -> eff
        [ delay 20 <| SetRoutesContainerClass "uk-animation-fade"
        ]
        { model | routesContainerClass = "uk-invisible" }

    SetRoutesContainerClass class -> pure { model | routesContainerClass = class }

    LocaleGet name -> eff [ Http.Locale.get name, LocalStorage.setCurrentLocale name ] model

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
