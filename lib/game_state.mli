open! Base

(** A [t] represents the current state of the game. *)
type t =
  | In_progress
  | Snake_Win of string
  | Opponent_Win of string
  | Draw
[@@deriving sexp_of, compare]

(** [to_string] pretty-prints the current game state into a string. *)
val to_string : t -> string
