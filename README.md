# clipboard

Clipboard write access. Writes safe text to the system clipboard. Returns a
promise that resolves when the operation completes.

## API

```
#use wasm.bats-packages.dev/clipboard as CB
#use array as A
#use promise as P

(* Write safe text to the clipboard.
   Resolves with 1 on success, 0 on failure. *)
$CB.write_text{n:nat}
  (text: A.text(n), text_len: int n)
  : promise(int, Pending)
```

## Dependencies

- **array**
- **promise**
