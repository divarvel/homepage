open Yocaml
open Common

module Talk = struct
  let entity_name = "talk"

  type lang = En | Fr
  let lang_to_string l = match l with
      | En -> "en"
      | Fr -> "fr"
  let validate_lang x =
      let open Data.Validation in
      let* l = string x
      in match l with
        | "en" -> Result.Ok En
        | "fr" -> Result.Ok Fr
        | _ -> fail_with ~given: l "supported langs are fr and en"
  type entry_type = Slides | Video
  let entry_type_to_string et = match et with
      | Slides -> "slides"
      | Video -> "video"
  let validate_entry_type x =
      let open Data.Validation in
      let* l = string x
      in match l with
        | "slides" -> Result.Ok Slides
        | "video" -> Result.Ok Video
        | _ -> fail_with ~given: l "supported types are slides and video"

  type entry = {
    lang : lang;
    entry_type : entry_type;
    url : string;
    label : string option;
  }

  type talk = {
    name : string;
    description : string;
    years : string option;
    entries : entry list;
    featured : bool;
  }

  type t = { talks : talk list }

  let neutral =
    let talks = [] in
    Result.Ok { talks }

  let validate_entry =
      let open Data.Validation in
      record (fun fields ->
          let+ entry_type = required fields "type" validate_entry_type
          and+ lang = required fields "lang" validate_lang
          and+ url = required fields "url" string
          and+ label = optional fields "label" string
          in { entry_type; lang; url; label; })

  let validate_talk =
    let open Data.Validation in
    record (fun fields ->
        let+ name = required fields "name" string
        and+ description = required fields "desc" string
        and+ years = optional fields "years" string
        and+ entries = optional_or ~default: [] fields "entries" (list_of validate_entry)
        and+ featured = optional_or ~default:false fields "featured" bool
        in { name; description; years; entries; featured })

  let validate =
    let open Data.Validation in
    record (fun fields ->
        let+ talks = required fields "talks" (list_of validate_talk) in
        { talks })

  let entry_to_data { lang; entry_type; url; label;} =
  let open Data in
  record [
      ("lang", string (lang_to_string lang));
      ("type", string (entry_type_to_string entry_type));
      ("url", string url);
      ("label", option string label)
  ]

  let talk_to_data { name; description; years; entries; featured; } =
    let open Data in
    record [
    ("name", string name);
    ("description", string description);
    ("years", option string years);
    ("entries", list_of entry_to_data entries);
    ("featured", bool featured)
    ]

  let normalize { talks } =
    let open Data in
    [ ("talks", list_of talk_to_data talks) ]

  let to_data x = Data.record (normalize x)
end

let (create_talk_index : Action.t) =
  let path = Path.(www / "talks.html") in
  let pipeline =
    let open Task in
    let+ () = track_binary
    and+ apply_templates =
      Yocaml_jingoo.read_templates
        Path.[ templates / "talks.html"; templates / "layout.html" ]
    and+ metadata, content =
      Yocaml_yaml.Pipeline.read_file_with_metadata
        (module Talk)
        Path.(assets / "talks.md")
    in
    content |> Yocaml_markdown.from_string_to_html
    |> apply_templates (module Talk) ~metadata
  in
  Action.Static.write_file path pipeline

