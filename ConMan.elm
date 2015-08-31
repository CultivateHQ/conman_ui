module ConMan where

import Contact exposing (view, init)


main =
  view (init "Bobby Tables" "bobby@example.com" "01 234 5678")
