module View.Root exposing (..)

-- import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Html.Styled.Events exposing (..)
import Types exposing (..)

render : Model -> Html Event
render _ = div [] <|
    [ br [] []
    , br [] []
    , node "materialboxed-image" []
        [ img
            [ src "static/img/Ryner.jpg"
            , class "materialboxed"
            , width 200
            ]
            []
        ]
    , h4 [] [ text "Ryner" ]
    , h4 [] [ text "Reinhardt" ]
    ]
