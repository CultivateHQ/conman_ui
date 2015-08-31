module Contact where

import Html exposing (..)
import Html.Attributes exposing (..)


-- MODEL

type alias Model =
  { name: String
  , email: String
  , phone: String
  }


-- UPDATE

type Action = NoOp

update action model =
  case action of
    NoOp -> model


-- VIEW

view contact =
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
