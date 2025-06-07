type direction = Left | Right

module State = Map.Make (Char)

type action = { write : char; direction : direction; state : int }
type state = action State.t
type key = int

let key it = it

module States = Map.Make (Int)

type states = state States.t
