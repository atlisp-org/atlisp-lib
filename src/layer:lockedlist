(defun layer:lockedlist (/ each out)
    "返回锁定图层列表"
    (vlax-for each (std:layers)
        (if (= (vla-get-lock each)
                :vlax-true)
            (setq out (cons (vla-get-name each)
                    out))))
    out)
