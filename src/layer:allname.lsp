(defun layer:allname (/ out)
    "返回所有图层的名称(字符串表)"
    (vlax-for obj *lays* (setq out (cons (vlax-get-property obj (quote name))
                out)))
    (reverse out))
