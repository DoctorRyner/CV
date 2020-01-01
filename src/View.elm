module View exposing (view)

import Browser                exposing (..)
import Html.Styled            exposing (..)
import Html.Styled.Events     exposing (..)
import Html.Styled.Attributes exposing (..)
import Types                  exposing (..)

import View.Root
import View.Header
import View.NotFound
import View.Preloader exposing (showLoadingBarIfLocaleIsntLoaded) 

view : Model -> Document Event
view model =
    let routes = showLoadingBarIfLocaleIsntLoaded model.locale <| case model.url.path of
            "/"     -> View.Root.render model
            _       -> View.NotFound.render <| model.get "notFound"
    in
    { title = "Elm Playground Application"
    , body  = List.map toUnstyled <|
        [ div [ class "uk-container" ]  
            [ View.Header.render model
            , div [ id "routes-container", class model.routesContainerClass ] [ routes ]
            ]
        ]
    }
