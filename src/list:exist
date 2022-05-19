(defun list:exist (lst item)
    "判断item是否在列表内"
    "存在t，反之nil"
    "(list:exist '(1 2 3 4)
        3)"
    (apply (quote or)
        (cons (vl-position item lst)
            (mapcar (quote (lambda (x)
                        (list:exist x item)))
                (vl-remove-if (quote atom)
                    lst)))))
