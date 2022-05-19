(defun layout:vla-list (/ a lst)
    "按照当前屏幕显示的顺序返回所有布局对象"
    "布局对象列表"
    (vlax-for a *layouts* (setq lst (cons (list (vla-get-taborder a)
                    a)
                lst)))
    (cdr (mapcar (quote cadr)
            (vl-sort lst (quote (lambda (x y)
                        (< (car x)
                            (car y))))))))
