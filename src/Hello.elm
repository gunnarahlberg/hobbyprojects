module Hello exposing (..)

import Html exposing (text, div, h1, p)
import Html.Attributes exposing (class)


main : Html.Html msg
main =
    div [ class "main" ]
        [ h1 [] [ text "Welcome to the hobby project" ]
        , p
            []
            [ text "Elm is kewl" ]
        ]
