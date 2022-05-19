(defun string:from-list (lst separator)
  "列表转成字符串"
  (if (cdr lst)
    (strcat (car lst)
      separator (string:from-lst (cdr lst)
        separator))
    (car lst)))
