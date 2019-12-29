module View exposing (view)

import Browser                exposing (..)
import Html.Styled            exposing (..)
import Html.Styled.Events     exposing (..)
import Html.Styled.Attributes exposing (..)
import Types                  exposing (..)

import View.Root
import View.PageHeader

view : Model -> Document Event
view model =
    let routes = case model.url.path of
            "/"     -> View.Root.render model
            _       -> text "404"
    in
    { title = "Elm Playground Application"
    , body  = List.map toUnstyled <|
        [ div [ class "container" ]  
            [ View.PageHeader.render model
            , routes
            ]
        ]
    }
