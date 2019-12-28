module Update exposing (update)

import Browser exposing (..)
import Browser.Navigation as Nav
import Url
import Types exposing (..)
import Utils exposing (..)

update : Event -> Model -> (Model, Cmd Event)
update event model = case event of
    Init -> runEvents [ NoEvent ] model

    NoEvent -> eff [] model

    LinkClicked urlRequest -> case urlRequest of
        Internal url  -> eff [ Nav.pushUrl model.key <| Url.toString url ] model
        External href -> eff [ Nav.load href                             ] model

    UrlChanged url -> pure { model | url = url }