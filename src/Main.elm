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
    div []
        [ text "hello world"
        ]
