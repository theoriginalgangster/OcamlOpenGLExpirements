(* this is the submodule *)

(* this is the sumbole interface *)
module type Hello_type = sig 
 val hello : unit -> unit
end 

(* this is the submodule implementation *)
module Hello : Hello_type = struct 
  let message = "Hello"
  let hello () = print_endline message
end
  
(* At this point, Hello.message is not accessible anymore. *)
let goodbye () = print_endline "Goodbye"
let hello_goodbye () =
  Hello.hello ();
  goodbye ()
