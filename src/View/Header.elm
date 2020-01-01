module View.Header exposing (..)

import Types exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Html.Styled.Events exposing (..)
import Css exposing (..)

render : Model -> Html Event
render model =
    let isActive path = class <| if model.url.path == path then "uk-active" else ""
        mkNavItem (path, label) = li [ isActive <| if path == "/" then "/" else "/" ++ path ]
                                     [ a [ href path, onClick ApplyChangeRouteAnimation ] [ text label ] ]
    in header []
    [ label [ class "uk-flex uk-flex-center uk-margin-top" ]
        [ div []
            [ span [ id "languageIcon", attribute "uk-icon" "world" ] []
            , a [ href "", onClick <| LocaleGet "en" ] [ text "English" ]
            , text " / "
            , a [ href "", onClick <| LocaleGet "ru" ] [ text "Русский" ]
            ]
        ]
    , div [ attribute "uk-sticky" "show-on-up: true; animation: uk-animation-slide-top" ]
        [ nav [ class "uk-navbar-container uk-navbar-transparent", attribute "uk-navbar" "" ]
            [ div [ class "uk-navbar-center" ]
                [ ul [ class "uk-navbar-nav" ] <| List.map mkNavItem
                    [ ("/", model.get "homePageName")
                    , ("cv", model.get "cvPageName")
                    , ("docs", model.get "docsPageName")
                    ]
                ]
            ]
        ]
    ]
