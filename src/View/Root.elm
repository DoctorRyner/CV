module View.Root exposing (..)

import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Html.Styled.Events exposing (..)
import Types exposing (..)

render : Model -> Html Event
render _ = div []
    [ h1 [] [ text "Test Header" ]
    , ol []
        [ li [] [ text "test" ]
        , li [] [ text "test" ]
        , li [] [ text "test" ]
        ]
    , button [ class "btn waves-effect waves-light deep-purple lighten-2" ] [ text "Click" ]
    ]
