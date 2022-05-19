(defun list:remove-index (lst index / i)
    "按索引删除列表的项,leemac"
    "删除索引项之后的列表"
    "(list:removeindex '(0 1 2 3)
        1)"
    (setq i -1)
    (vl-remove-if (quote (lambda (x)
                (= (setq i (1+ i))
                    index)))
        lst))
