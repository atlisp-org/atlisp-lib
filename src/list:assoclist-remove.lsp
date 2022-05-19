(defun list:assoclist-remove (lst key)
    "删除表中关联表匹配到key的的子表"
    "删除元素后的表"
    "(list:assoclist-remove '((1 11)
            (2 22)
            (3 33)
            (4 44))
        2)
    ==>((1 11)
        (3 33)
        (4 44))"
    (vl-remove-if (quote (lambda (x)
                (equal (car x)
                    key)))
        lst))
