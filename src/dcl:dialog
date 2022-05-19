(defun dcl:dialog (name)
  "创建名为 name 的对话框文件。外部变量: dcl-tmp 含路径的文件名. dcl-fp 文件指针。 "
  ""
  "(dcl:dialog \"tips\")"
  (setq dcl:accept-hook nil)
  (setq dcl-tmp (vl-filename-mktemp name @:*tmp-path* ".dcl"))
  (setq dcl-fp (open dcl-tmp "w"))
  (write-line (strcat name ":dialog {"
      "label = \""
      name "\";key=title;")
    dcl-fp))
