(defun layout:list (/ a lst)
    "按照当前屏幕显示的顺序返回所有布局名称"
    "布局名列表"
    (vlax-for a *layouts* (setq lst (cons (list (vla-get-taborder a)
                    (vla-get-name a))
                lst)))
    (cdr (mapcar (quote cadr)
            (vl-sort lst (quote (lambda (x y)
                        (< (car x)
                            (car y))))))))
