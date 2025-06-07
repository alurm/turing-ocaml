type direction = Left | Right

module State : Map.S with type key = char

type action = { write : char; direction : direction; state : int }
type state = action State.t
type key

val key : int -> key

module States : Map.S with type key = key

type states = state States.t
