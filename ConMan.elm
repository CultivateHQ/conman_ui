module ConMan where

import Html exposing (..)
import Html.Attributes exposing (..)


main =
  view


-- VIEW

view =
  div [ class "contact" ]
  [ h2 [ class "contact__name" ] [ text "Bobby Tables" ]
  , div [ class "contact__email" ]
    [ span [ ] [ text "Email:" ]
    , a [ href ("mailto:bobby@example.com") ] [ text "bobby@example.com" ]
    ]
  , div [ class "contact__phone" ]
    [ span [ ] [ text "Phone:" ]
    , a [ href ("tel:01 234 5678") ] [ text "01 234 5678" ]
    ]
  ]
