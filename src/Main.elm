module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


type alias Model =
    Int


type Msg
    = NoOp


main : Program () Model Msg
main =
    Browser.sandbox
        { init = 0
        , view = view
        , update = update
        }


update : Msg -> Model -> Model
update msg model =
    model


view : Model -> Html Msg
view model =
    div
        [ id "editor"

        -- , class "editable m-4 p-2 border-2 h-64"
        ]
        [ div [ id "preview" ] []
        ]
