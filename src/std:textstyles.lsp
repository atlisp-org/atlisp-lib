(defun std:textstyles nil "返回字体样式集合"
    (eval (list (quote defun)
            (quote std:textstyles)
            (quote nil)
            (vla-get-textstyles (vla-get-activedocument (vlax-get-acad-object)))))
    (std:textstyles))
