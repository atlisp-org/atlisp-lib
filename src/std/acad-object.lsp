(defun std:acad-object nil "返回cad对象"
    (eval (list (quote defun)
            (quote std:acad-object)
            (quote nil)
            (vlax-get-acad-object)))
    (std:acad-object))
