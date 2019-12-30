module View.PageHeader exposing (..)

import Types exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Html.Styled.Events exposing (..)
import Css exposing (..)

tabs : Model -> Html Event
tabs _ = node "materialize-tabs" []
    [ div [ class "tabs tabs-fixed-width" ]
        [ li [ class "tab" ] [ a [ href "/" ] [ text "Home" ] ] 
        , li [ class "tab" ] [ a [ href "cv" ] [ text "CV" ] ] 
        , li [ class "tab" ] [ a [ href "docs" ] [ text "Docs" ] ] 
        ]
    ]

render : Model -> Html Event
render model = div [ class "tabs-sticky" ]
    [ h1 [] []
    , tabs model
    ]

