(defun m:intersect (lst1 lst2)
    "列表交集"
    (vl-remove-if-not (quote (lambda (x)
                (member x lst2)))
        lst1))
