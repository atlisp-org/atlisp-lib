(defun m:difference (lst1 lst2 / lst)
    "列表差集"
    (vl-remove-if (quote (lambda (x)
                (member x lst2)))
        lst1))
