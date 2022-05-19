(defun m:minlist (lst)
    "返回数值列表的中的最小值"
    (if (atom lst)
        lst (apply (quote min)
            lst)))
