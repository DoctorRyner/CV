module View.Root exposing (..)

import Html.Styled exposing (..)
import Types       exposing (..)

render : Model -> Html Event
render _ = text "Hello, my CV ~"