open Yocaml

let www = Path.rel [ "_www" ]
let assets = Path.rel [ "assets" ]
let images = Path.(assets / "images")
let css = Path.(assets / "css")
let pages = Path.(assets / "pages")
let templates = Path.(assets / "templates")

let track_binary = 
  Sys.executable_name
  |> Yocaml.Path.from_string
  |> Pipeline.track_file

let with_ext exts file =
  List.exists  (fun ext -> Path.has_extension ext file) exts

