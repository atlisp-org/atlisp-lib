(defun layer:layers (/ sll layer)
    "返回图层列表 list"
    (setq layer nil)
    (setq sll (tblnext "layer"
            t))
    (while (/= sll nil)
        (setq sll (cdr (assoc 2 sll)))
        (setq layer (cons sll layer))
        (setq sll (tblnext "layer"
                nil)))
    (reverse layer))
