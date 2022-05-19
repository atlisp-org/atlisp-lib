(defun m:union (lst1 lst2)
    "求列表的并集"
    (append lst1 (vl-remove-if (quote (lambda (x)
                    (member x lst1)))
            lst2)))
