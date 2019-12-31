module View.Root exposing (..)

-- import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Html.Styled.Events exposing (..)
import Types exposing (..)

render : Model -> Html Event
render model = div [ class "row" ] <|
    [ br [] []
    , br [] []
    , node "materialboxed-image"
        [ class "col m4"
        ]
        [ img
            [ src "static/img/Ryner.jpg"
            , class "materialboxed responsive-img"
            , id "homeAvatar"
            ]
            []
        ]
    , h4 [ class "col s7 valign-wrapper" ]
        [ pre [] [ text <| model.get "myFirstName" ++ " " ++ model.get "myLastName" ]
        ]
    ]
