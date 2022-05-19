(defun filename:special-symbol (str)
  "替换文件名中的特殊字符"
  "String"
  (setq str (@:string-subst "／"
      "/"
      str))
  (setq str (@:string-subst "："
      ":"
      str))
  (setq str (@:string-subst "；"
      ";"
      str))
  (setq str (@:string-subst "、"
      "\\"
      STR)))
