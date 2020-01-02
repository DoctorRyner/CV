module View.Preloader exposing (..)

import Types exposing (..)
import Types.Locale exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Html.Styled.Events exposing (..)
import Css exposing (..)
import Dict

showLoadingBarIfLocaleIsntLoaded : Locale -> Html Event -> Html Event
showLoadingBarIfLocaleIsntLoaded locale routeContent =
    if locale == Dict.empty
    then span [ attribute "uk-spinner" "ratio: 3", class "uk-position-center" ] []
    else routeContent
