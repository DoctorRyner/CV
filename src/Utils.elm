module Utils exposing (..)

import Task
import Process

const : a -> b -> a
const a _ = a

delay : Float -> msg -> Cmd msg
delay time msg = Task.perform (const msg) <| Process.sleep time

send : msg -> Cmd msg
send msg = Task.succeed msg |> Task.perform identity

pure : model -> (model, Cmd event)
pure model = (model, Cmd.none)

eff : List (Cmd event) -> model -> (model, Cmd event)
eff commands model = (model, Cmd.batch commands)

runEvents : List event -> model -> (model, Cmd event)
runEvents events model = (model, Cmd.batch <| List.map send events)