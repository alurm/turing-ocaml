type direction = Left | Right

module _ = Two

module _ = Machine

let m =
  let module Ss = Machine.States in
  let module S = Machine.State in
  let key = Machine.key in 0
  (* Ss.singleton (key 0)  *)

module _ = Base

(* let _ = Two.Machine.Left

module _ = Two.Machine

type t = Two.Machine.direction *)

(* let _ = Two.Machine.((Left : direction)) *)

(* https://en.wikipedia.org/wiki/Turing_machine *)
module type MachineDescription = sig
  module Symbol : Set.OrderedType
  module Alphabet : Set.S with type elt = Symbol.t
  module Transition : Map.S with type key = Symbol.t

  type state = {
    direction : direction;
    write : Symbol.t;
    transition : transition;
  }

  and transition = state Transition.t

  val unwritten_symbol : Symbol.t
  val input_alphabet : Alphabet.t
  val initial_state : state
  val final_state : state
end

module MachineDescription : MachineDescription = struct
  module Symbol = Char
  module Alphabet = Set.Make (Symbol)
  module Transition = Map.Make (Symbol)

  type state = {
    direction : direction;
    write : Symbol.t;
    transition : transition;
  }

  and transition = state Transition.t

  let unwritten_symbol = '0'
  let input_alphabet = Alphabet.of_list [ '0'; '1' ]
  let initial_state = {
    write = '0';
    direction = Left;
    transition = Transition.of_list [];
  }
  let final_state = initial_state
end

module Machine (Description : MachineDescription) = struct
  
end
