(defun string:parse-by-lst (lstr delimlst)
  "字符串按分隔符列表转列表"
  "拆分后的列表"
  "(string:parse-by-lst \"a-b=c\"
    '(\"-\"
      \"=\"))"
  (setq lstr (list lstr))
  (foreach del delimlst (setq lstr (apply (quote append)
        (mapcar (quote (lambda (x)
              (string:to-lst x del)))
          lstr))))
  (if (member "
      "
      delimlst)
    (vl-remove ""
      lstr)
    lstr))
