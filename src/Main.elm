port module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Json.Decode as Decode


port receivedContent : (String -> msg) -> Sub msg


port wantContent : () -> Cmd msg


type alias Model =
    { content : String }


type Msg
    = ReceivedContent String
    | SubmitContentClicked


subscriptions : Model -> Sub Msg
subscriptions _ =
    receivedContent ReceivedContent


main : Program Decode.Value Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : Decode.Value -> ( Model, Cmd Msg )
init flags =
    ( { content = "" }, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SubmitContentClicked ->
            ( model, wantContent () )

        ReceivedContent str ->
            ( { model | content = str }, Cmd.none )


view : Model -> Html Msg
view model =
    div []
        [ div [ id "editor" ] []
        , button
            [ type_ "button"
            , class "border-2 p-1 m-2"
            , onClick SubmitContentClicked
            ]
            [ text "Submit" ]
        , div [ id "preview" ]
            []
        ]
