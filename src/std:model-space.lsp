(defun std:model-space nil "返回模型空间对象"
    (eval (list (quote defun)
            (quote std:model-space)
            (quote nil)
            (vla-get-modelspace (vla-get-activedocument (vlax-get-acad-object)))))
    (std:model-space))
