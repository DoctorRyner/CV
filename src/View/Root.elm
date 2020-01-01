module View.Root exposing (..)

-- import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Html.Styled.Events exposing (..)
import Types exposing (..)

render : Model -> Html Event
render _ = div [] <| List.repeat 50 <| h1 [] [ text "Root" ]
