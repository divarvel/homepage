open Yocaml
open Common

let copy_images =
  let images_path = Path.(www / "images")
  and where = with_ext [ "svg"; "png"; "jpg"; "gif" ] in
  Batch.iter_files 
    ~where images 
    (Action.copy_file ~into:images_path)

let create_css =
  let css_path = Path.(www / "style.css") in
  Action.Static.write_file css_path
    (Pipeline.pipe_files ~separator:"\n"
       Path.[ 
          css / "reset.css"
        ; css / "style.css" ])

let create_page source =
  let page_path =
    source 
    |> Path.move ~into:www 
    |> Path.change_extension "html"
  in
  let pipeline =
    let open Task in
    let+ () = track_binary
    and+ apply_templates = 
       Yocaml_jingoo.read_templates 
         Path.[ templates / "page.html"
              ; templates / "layout.html" ]
    and+ metadata, content =
      Yocaml_yaml.Pipeline.read_file_with_metadata
        (module Archetype.Page)
        source
    in
    content 
    |> Yocaml_markdown.from_string_to_html
    |> apply_templates (module Archetype.Page) ~metadata
  in
  Action.Static.write_file page_path pipeline

let create_pages =
  let where = with_ext [ "md"; "markdown"; "mdown" ] in
  Batch.iter_files ~where pages create_page

let program () =
  let open Eff in
  let cache = Path.(www / ".cache") in
  Action.restore_cache cache 
  >>= create_css
  >>= copy_images
  >>= create_pages
  >>= Talks.create_talk_index
  >>= Talks.create_talks_pages
  >>= Action.store_cache cache

let () = Yocaml_unix.run ~level:`Debug program
