(defun list:flatten (lst / lst1)
  "将多维列表展平为一维。单向箔。"
  "list"
  "(list:flatten '(a (b c)
      (d (e))))"
  (foreach x lst (cond ((atom x)
        (setq lst1 (append lst1 (list x))))
      ((listp x)
        (setq lst1 (append lst1 (list:flatten x)))))))
