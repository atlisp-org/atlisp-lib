(defun list:remove-once (lst item / f)
    "删除表中第一个匹配到的元素"
    "删除元素后的表"
    "(list:removeonce '(1 2 3 4 3)
        3)"
    (setq f equal)
    (vl-remove-if (quote (lambda (a)
                (if (f a item)
                    (setq f (lambda (a b)
                            nil)))))
        lst))
