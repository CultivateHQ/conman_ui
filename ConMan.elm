module ConMan where

import Contact exposing (init, update, view)

import StartApp
import Effects
import Task

app =
  StartApp.start
  { init = init "" "" ""
  , update = update
  , view = view
  , inputs = []
  }


main =
  app.html

port tasks : Signal (Task.Task Effects.Never ())
port tasks =
  app.tasks
