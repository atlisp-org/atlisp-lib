(defun m:symmetric-difference (l1 l2)
    "列表对称差集"
    (append (vl-remove-if (quote (lambda (x)
                    (member x l2)))
            l1)
        (vl-remove-if (quote (lambda (x)
                    (member x l1)))
            l2)))
