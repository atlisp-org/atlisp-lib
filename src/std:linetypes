(defun std:linetypes nil "返回线型集合"
    (eval (list (quote defun)
            (quote std:line-types)
            (quote nil)
            (vla-get-linetypes (vla-get-activedocument (vlax-get-acad-object)))))
    (std:line-types))
