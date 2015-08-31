module Contact where

import Html exposing (..)
import Html.Attributes exposing (..)

import Effects


-- MODEL

type alias Model =
  { name: String
  , email: String
  , phone: String
  }


init name email phone =
  ( Model name email phone
  , Effects.none)


-- UPDATE

type Action = NoOp

update action model =
  case action of
    NoOp -> (model, Effects.none)


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
