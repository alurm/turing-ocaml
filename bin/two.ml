(* module Machine = struct

end

let () =
  let open Machine in
  let module Ss = States in
  let module S = State in
  let _ =
    Ss.of_list
      [
        ( 0,
          S.of_list
            [
              ( '0',
                {
                  write = '1';
                  direction = Right;
                  state = 1;
                } );
            ] );
        ( 1,
          S.of_list [ ('1', { write = '0'; direction = Left; state = 0 }) ]
        );
      ]
  in
  () *)
