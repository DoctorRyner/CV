module View.PageHeader exposing (..)

import Types exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Html.Styled.Events exposing (..)
import Css exposing (..)

mkHeaderItem : (String, String) -> Html Event
mkHeaderItem (path, label) = a
    [ href path
    , class "collection-item black-text"
    ]
    [ text label ]

render : Model -> Html Event
render _ = div []
    [ div [ class "collection deep-grey" ] <| List.map mkHeaderItem
        [ ("/", "Home")
        , ("CV", "CV")
        , ("docs", "Docs")
        ]
    ]

