(defun list:search-index (lst index)
    "以索引查找表中元素\n参数：\n  lst:列表\n  index:索引或者索引表"
    "查找到的元素组成的表"
    "(list:search-index '(1 2 3 4)
        3)"
    (mapcar (quote (lambda (x)
                (nth x lst)))
        (if (atom index)
            (list index)
            index)))
