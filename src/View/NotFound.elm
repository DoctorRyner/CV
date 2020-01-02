module View.NotFound exposing (..)

import Types exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)

render : String -> Html Event
render notFoundText = div []
    [ h1 [] [ text "404" ]
    , hr [ class "uk-divider-icon" ] []
    , p [ class "flow-text" ] [ text notFoundText ]
    ]
