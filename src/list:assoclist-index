(defun list:assoclist-index (lst key)
    "根据key查找关联表的索引"
    "索引，从0开始"
    "(list:assoclist-index '((1 11)
            (2 22)
            (3 33)
            (4 44))
        3)
    ==> 2"
    (vl-position key (mapcar (quote car)
            lst)))
