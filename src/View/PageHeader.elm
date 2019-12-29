module View.PageHeader exposing (..)

import Types exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Html.Styled.Events exposing (..)
import Css exposing (..)

render : Model -> Html Event
render _ = div
    [ attribute
        "uk-sticky"
        <| String.concat <| List.map (\str -> str ++ "; ")
            [ "sel-target: .uk-navbar-container"
            , "cls-active: uk-navbar-sticky"
            , "bottom: #transparent-sticky-navbar"
            ]
    , class "uk-inline uk-position-top-center"
    ]
    [ nav
        [ class "uk-navbar-container uk"
        , attribute "uk-navbar" ""
        , css
            [ position relative
            , zIndex <| int 980
            ]
        ]
        [ div [ class "uk-navbar-left" ]
            [ ul [ class "uk-navbar-nav" ]
                [ li [ class "uk-active" ] [ a [ href "home" ] [ text "Home" ] ]
                , li [] [ a [ href "cv" ] [ text "CV" ] ]
                , li [] [ a [ href "docs" ] [ text "Docs" ] ]
                ]
            ]
        ]
    ]