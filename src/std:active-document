(defun std:active-document nil "返回当前活动文档对象"
    (eval (list (quote defun)
            (quote std:active-document)
            (quote nil)
            (vla-get-activedocument (vlax-get-acad-object))))
    (std:active-document))
