(defun json:encode-json-alist (alist)
  "将属性表（点对表组成的列表）编码为json字符串"
  "String"
  (@::post (strcat (@::uri)"/api/encode-json")
  (vl-prin1-to-string  alist)
  ))
