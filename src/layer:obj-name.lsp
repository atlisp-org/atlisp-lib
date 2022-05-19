(defun layer:obj-name (/ ob)
    "返回所有图层对应的对象名(大写)"
    "((图层名1 对象名1)
        (图层名2 对象名2)……)"
    (vlax-for each (vla-get-layers *doc*)
        (setq ob (cons (list (vla-get-name each)
                    each)
                ob)))
    ob)
