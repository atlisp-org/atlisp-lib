(defun string:from-list (lst separator)
  "合并连接字符串表"
  "String"
  (if (cdr lst)
    (strcat (car lst)
      separator (string:from-lst (cdr lst)
        separator))
    (car lst)))
