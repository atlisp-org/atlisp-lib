(defun example:dcl-modify-title (/ *error* make-dcl dcl-tmp dcl-id)
  "dcl改标题示例"
  ""
  "(require 'example:dcl-modify-title)(example:dcl-modify-title)"
  (defun *error* (msg)
    (@:*error* msg))
  (defun make-dcl (/ lst_str str file f)
    (setq lst_str (quote (""
          "test:dialog {"
          "
             value=\"初始标题\";"
          "
             key = \"test\"
          ;"
          "
             :edit_box {"
          "
                 key = \"title\"
          ;"
          "
                 label = \"标题:\"
          ;"
          "
             }"
          "
             :button {"
          "
                 key = \"modify\"
          ;"
          "
                 label = \"更改\"
          ;"
          "
             }"
          "
             ok_cancel;"
          "}")))
    (setq file (vl-filename-mktemp "temp.dcl"))
    (setq f (open file "w"))
    (foreach str lst_str (princ "\n"
        f)
      (princ str f))
    (close f)
    file)
  (setq dcl-tmp (make-dcl))
  (setq dcl-id (load_dialog dcl-tmp))
  (if (not (new_dialog "test"
        dcl-id ""))
    (exit))
  (action_tile "modify"
    "(set_tile \"test\"
      (get_tile \"title\"))")
  (start_dialog)
  (unload_dialog dcl-id)
  (vl-file-delete dcl-tmp)
  (princ))
