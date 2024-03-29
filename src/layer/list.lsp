(defun layer:list (/ sll layer)
    "返回图层列表"
    (setq layer nil)
    (setq sll (tblnext "layer"
            t))
    (while (/= sll nil)
        (setq sll (cdr (assoc 2 sll)))
        (setq layer (cons sll layer))
        (setq sll (tblnext "layer"
                nil)))
    (reverse layer))
