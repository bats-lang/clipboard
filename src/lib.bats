(* clipboard -- async clipboard write *)

#include "share/atspre_staload.hats"

#use array as A
#use promise as P
#use wasm.bats-packages.dev/bridge as B

#pub fun write_text
  {lb:agz}{n:nat}
  (text: !$A.borrow(byte, lb, n), text_len: int n)
  : $P.promise(int, $P.Pending)

implement write_text{lb}{n}(text, text_len) = let
  val @(p, r) = $P.create<int>()
  val id = $P.stash(r)
  val () = $B.clipboard_write(text, text_len, id)
in p end
