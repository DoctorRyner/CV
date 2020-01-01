module View.Root exposing (..)

-- import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Html.Styled.Events exposing (..)
import Types exposing (..)

mkSlideshowItem : String -> Html Event
mkSlideshowItem imgPath = (\el -> li [] [ el ]) <| img
    [ attribute "data-src" imgPath
    , attribute "uk-img" "target: !.uk-slideshow-items"
    ]
    []

render : Model -> Html Event
render _ = div [ class "row" ]
    [ div
        [ class "uk-position-relative uk-visible-toggle uk-light"
        , attribute "uk-slideshow" ""
        , style "width" "400px"
        ]
        [ div [ class "uk-slideshow-items" ] <| List.map mkSlideshowItem <| List.repeat 3 "static/img/Ryner.jpg"
        , a
            [ class "uk-position-center-left uk-position-small uk-hidden-hover"
            , href "#"
            , attribute "uk-slidenav-previous" ""
            , attribute "uk-slideshow-item" "previous"
            ]
            []
        , a
            [ class "uk-position-center-right uk-position-small uk-hidden-hover"
            , href "#"
            , attribute "uk-slidenav-next" ""
            , attribute "uk-slideshow-item" "next"
            ]
            []
        ]
    ]
