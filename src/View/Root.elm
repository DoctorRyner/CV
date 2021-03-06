module View.Root exposing (..)

-- import Css exposing (..)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (..)
import Html.Styled.Events exposing (..)
import Types exposing (..)
import Utils exposing (..)

render : Model -> Html Event
render model = div [ class "uk-flex uk-flex-wrap uk-flex-left@m uk-flex-center" ]
    [ div
        [ class "uk-transition-toggle uk-inline-clip uk-flex-left"
        , attribute "tabindex" "0"
        ]
        [ img
            [ src "static/img/Ryner.jpg"
            , class "uk-transition-scale-up uk-transition-opaque"
            , width 250
            ]
            []
        ]
    , div [ class "uk-margin-left" ]
        [ h1
            [ id "avatarNameLabel"
            , class "uk-flex-left"
            ]
            [ text <| model.get "myFirstName" ++ " " ++ model.get "myLastName" ]
        , div [ class "uk-flex uk-flex-column" ]
            [ label [] [ text <| model.get "gender" ++ ": " ++ model.get "genderValue" ]
            , label [] [ text <| model.get "age" ++ ": " ++ "21" ]
            ]
        ]
    ]
