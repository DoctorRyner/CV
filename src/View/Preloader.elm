module View.Preloader exposing (..)

import Types exposing (..)
import Types.Locale exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Html.Styled.Events exposing (..)
import Css exposing (..)
-- import Dict

showLoadingBarIfLocaleIsntLoaded : Locale -> Html Event -> Html Event
showLoadingBarIfLocaleIsntLoaded _ view =
    if False -- locale == Dict.empty
    then div [ class "progress valign-wrapper" ]
        [ div [ class "indeterminate valign-wrapper" ] []
        ]
    else view
