(defun string:from-list (lst separator)
  "合并连接字符串表，lst 为 ASCII 码列表"
  "String"
  (if (cdr lst)
    (strcat (chr (car lst))
      separator (string:from-list (cdr lst)
        separator))
    (chr (car lst))))
