(defun string:numberp (str)
  "确定字符串是否为数字"
  (numberp (vl-catch-all-apply (quote read)
      (list (cond ((= "."
              (substr str 1 1))
            (strcat "0"
              str))
          ((and (= "-."
                (substr str 1 2))
              (> (strlen str)
                2))
            (strcat "-0"
              (substr str 2)))
          ((and (= "+."
                (substr str 1 2))
              (> (strlen str)
                2))
            (strcat "+0"
              (substr str 2)))
          (t str))))))
