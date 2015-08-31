module ConMan where

import Contact exposing (view, Model)


main =
  view (Model "Bobby Tables" "bobby@example.com" "01 234 5678")
