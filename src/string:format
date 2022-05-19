(defun string:format (str formatlist / i str-length)
  "字符串格式化函数"
  (if (std:stringp formatlist)
    (setq str (string:subst-all formatlist "{0}"
        str))
    (progn (setq i -1)
      (repeat (vl-list-length formatlist)
        (setq str (string:subst-all (nth (setq i (1+ i))
              formatlist)
            (strcat "{"
              (itoa i)
              "}")
            str))))))
