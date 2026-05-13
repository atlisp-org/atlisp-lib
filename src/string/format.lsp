(defun string:format (str formatlist / i item)
  "字符串格式化函数"
  (if (p:stringp formatlist)
      (setq str (string:subst-all "{0}" formatlist str))
      (progn (setq i -1)
             (repeat (vl-list-length formatlist)
               (setq item (nth (setq i (1+ i)) formatlist))
               (setq str (string:subst-all (cond ((numberp item) (itoa item))
                                                 ((stringp item) item)
                                                 (t (vl-princ-to-string item)))
                                             (strcat "{"
                                                     (itoa i)
                                                     "}")
                                             str))))))
