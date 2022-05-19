(defun dcl:new (name)
  "载入DCL，并创建对话框名为 name 的对象。"
  ""
  (setq dcl-id (load_dialog dcl-tmp))
  (if (not (new_dialog name dcl-id))
    (progn (princ "创建对话框失败，可能是太大了")
      (exit)))
  (action_tile "accept"
    "(dcl:accept)"))
