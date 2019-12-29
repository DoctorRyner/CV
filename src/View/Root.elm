module View.Root exposing (..)

import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Html.Styled.Events exposing (..)
import Types exposing (..)
import Css exposing (..)

render : Model -> Html Event
render _ = div [ class "uk-container uk-margin-top uk-margin-left" ]
    [ text "root"
    ]