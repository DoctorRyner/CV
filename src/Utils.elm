module Utils exposing (..)

pure : model -> (model, Cmd event)
pure model = (model, Cmd.none)

eff : List (Cmd event) -> model -> (model, Cmd event)
eff commands model = (model, Cmd.batch commands)