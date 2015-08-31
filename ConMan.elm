module ConMan where

import Html exposing (..)
import Html.Attributes exposing (..)


main =
  view (Model "Bobby Tables" "bobby@example.com" "01 234 5678")


-- MODEL

type alias Model =
  { name: String
  , email: String
  , phone: String
  }


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
