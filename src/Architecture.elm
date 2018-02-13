module ArchitectedHello exposing (..)

import Html exposing (..)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)


main =
    Html.beginnerProgram { model = model, view = view, update = update }



-- Model is what our model should like
-- there should be a text field and that is always a string
-- Model functions deal with state


type alias Model =
    { text : String
    , size : Int
    }


model : Model
model =
    { text = "Hello World", size = 10 }



-- Msg is our one and only kind of message


type Msg
    = Text
    | TextMinus
    | SizeUp
    | SizeDown


exclamationDropper text =
    if String.endsWith "!" text then
        String.dropRight 1 text
    else
        text


update : Msg -> Model -> Model
update msg model =
    case msg of
        Text ->
            { model | text = model.text ++ "!" }

        TextMinus ->
            { model | text = exclamationDropper model.text }

        SizeUp ->
            { model | size = model.size + 1 }

        SizeDown ->
            { model | size = model.size - 1 }


myStyle : Model -> Attribute msg
myStyle msg =
    style
        [ ( "fontSize", toString msg.size ++ "em" )
        , ( "color", "teal" )
        ]



-- View


view : Model -> Html Msg
view model =
    div []
        [ div [ myStyle model ]
            [ text model.text ]
        , button [ onClick Text ] [ text "Add Exclamation " ]
        , button [ onClick TextMinus ] [ text "Drop Exclamation " ]
        , button [ onClick SizeUp ] [ text "Increase " ]
        , button [ onClick SizeDown ] [ text "Decrease " ]
        ]
