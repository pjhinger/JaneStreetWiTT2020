open! Base

type t =
  | In_progress
  | Snake_Win of string
  | Opponent_Win of string
  | Draw
[@@deriving sexp_of, compare]

let to_string t =
  match t with
  | In_progress -> ""
  | Snake_Win x -> "SNAKE WINS! " ^ x
  | Opponent_Win x -> "OPPONENT WINS! " ^ x
  | Draw -> "YOU BOTH LOSE! MUAHAHAHA!"
;;
