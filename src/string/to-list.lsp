(defun string:to-list (str separator / pos)
  "字符串转成列表，拆分字符串，指定字符来分隔字符串。"
  "拆分后的列表"
  (if (= ""
      separator)
    (mapcar (quote (lambda (x)
          (string:l2s-ansi (list x))))
      (string:s2l-ansi str))
    (if (setq pos (vl-string-search separator str))
      (cons (substr str 1 pos)
        (string:to-lst (substr str (+ pos 1 (strlen separator)))
          separator))
      (list str))))
