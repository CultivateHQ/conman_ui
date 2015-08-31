module ConMan where

import Contact exposing (init, update, view)

import StartApp
import Effects
import Task

app =
  StartApp.start
  { init = init "Bobby Tables" "bobby@example.com" "01 234 5678"
  , update = update
  , view = view
  , inputs = []
  }


main =
  app.html

port tasks : Signal (Task.Task Effects.Never ())
port tasks =
  app.tasks
