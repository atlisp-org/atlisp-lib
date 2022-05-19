(defun dcl:show (/ ret)
  "显示对话框"
  ""
  (setq ret (start_dialog))
  (unload_dialog dcl-id)
  (vl-file-delete dcl-tmp)
  ret)
