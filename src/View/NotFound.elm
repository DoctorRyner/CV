module View.NotFound exposing (..)

import Types exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)

render : Model -> Html Event
render _ = div []
    [ h1 [] [ text "404" ]
    , hr [] []
    , h4 [] [ text "Page doesn't exist, maybe there is a typo?" ]
    ]
