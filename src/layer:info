(defun layer:info (/ lst d e1 e2)
    "返回所有图层的信息"
    "((\"层名\"
            状态 颜色 \"线型\")……)\n状态：1冻结图层 2新视口冻结图层 4锁定…(其他看帮助)\n颜色：负值为隐藏图层\n"
    (while (setq d (tblnext "layer"
                (null d)))
        (setq lst (cons (mapcar (quote cdr)
                    (cdr d))
                lst)))
    (vl-sort lst (quote (lambda (e1 e2)
                (< (car e1)
                    (car e2))))))
