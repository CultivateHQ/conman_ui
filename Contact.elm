module Contact where

import Html exposing (..)
import Html.Attributes exposing (..)

import Effects
import Task

import Http
import Json.Decode as Json exposing ((:=))


-- MODEL

type alias Model =
  { name: String
  , email: String
  , phone: String
  }


init name email phone =
  ( Model name email phone
  , fetchContact)


-- UPDATE

type Action
  = NoOp
  | Refresh (Maybe Model)

update action model =
  case action of
    NoOp -> (model, Effects.none)

    Refresh contact ->
      ( Maybe.withDefault model contact
      , Effects.none
      )


-- VIEW

view address contact =
  div [ class "contact" ]
  [ h2 [ class "contact__name" ] [ text contact.name ]
  , div [ class "contact__email" ]
    [ span [ ] [ text "Email:" ]
    , a [ href ("mailto:" ++ contact.email) ] [ text contact.email ]
    ]
  , div [ class "contact__phone" ]
    [ span [ ] [ text "Phone:" ]
    , a [ href ("tel:" ++ contact.phone) ] [ text contact.phone ]
    ]
  ]


-- EFFECTS

fetchContact =
  Http.get decodeContact "http://localhost:4000/api/contacts/1"
    |> Task.toMaybe
    |> Task.map Refresh
    |> Effects.task

decodeContact =
  let contact =
        Json.object3 (\name email phone -> (init name email phone))
          ("name" := Json.string)
          ("email" := Json.string)
          ("phone" := Json.string)
  in
      Json.at ["data"] contact
