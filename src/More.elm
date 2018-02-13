module More exposing (..)

import Html exposing (..)


status : Int -> String
status number =
    if number == 200 then
        "You got it"
    else if number == 404 then
        "Page not found"
    else
        "Unknown status"


statuses : List String
statuses =
    [ status 200
    , status 404
    , status 500
    ]


main =
    statuses
        |> toString
        |> text
