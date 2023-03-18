(defun ui:confirm (lst-str / *error* result dcl-fp dcl-tmp)
  "确认对话框. 参数：lst-str 单个字符串，或字符串列表。"
  "T or nil"
  "(ui:confirm \"你遇到真爱了吗?\")"
    (defun *error* (msg)
      (if (= (quote file)
          (type dcl-fp))
        (close dcl-fp))
      (vl-file-delete dcl-tmp)
      (prin1 msg))
    (setq result nil)
    (setq dcl-tmp (strcat @:*prefix* "tmp-confirm.dcl"))
    (setq dcl-fp (open dcl-tmp "w"))
    (write-line "confirm :dialog{label=\"Confirm\";:spacer{}:column{"
      dcl-fp)
    (if (not (listp lst-str))
      (setq lst-str (list lst-str)))
    (foreach str (mapcar (quote @:to-string)
        lst-str)
	     (write-line (strcat ":text{label="
				 (chr 34)
          (string:subst-dqm str)
          "\";}")
        dcl-fp))
    (write-line "} :spacer{} ok_cancel;}"
      dcl-fp)
    (close dcl-fp)
    (setq dcl_id (load_dialog dcl-tmp))
    (if (not (new_dialog "confirm"
          dcl_id ""))
      (exit))
    (action_tile "accept"
      "(setq result T)(done_dialog 1)")
    (start_dialog)
    (unload_dialog dcl_id)
    (vl-file-delete dcl-tmp)
    result)
