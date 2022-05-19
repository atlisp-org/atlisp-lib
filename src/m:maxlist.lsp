(defun m:maxlist (lst)
    "返回数值列表的中的最大值"
    (if (atom lst)
        lst (apply (quote max)
            lst)))
