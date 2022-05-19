(defun std:layers nil "返回图层集合"
    (eval (list (quote defun)
            (quote std:layers)
            (quote nil)
            (vla-get-layers (vla-get-activedocument (vlax-get-acad-object)))))
    (std:layers))
