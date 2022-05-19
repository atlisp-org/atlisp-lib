(defun list:replace[m,n] (oldlst m n item)
    "按索引替换列表第m子表的第n项"
    (list:replace-index oldlst m (list:replace-index (nth m oldlst)
            n item)))
