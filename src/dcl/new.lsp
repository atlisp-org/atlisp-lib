(defun dcl:new (name )
  "载入DCL，并创建对话框名为 name 的对象。 dcl-tmp 和 dcl-id 是和其它函数共用的外部变量"
  "dcl-id"
  (setq dcl-id (load_dialog dcl-tmp))
  (if (not (new_dialog name dcl-id))
    (progn (princ "创建对话框失败，可能是太大了")
      (exit)))
  (action_tile "accept"
    "(dcl:accept)"))
