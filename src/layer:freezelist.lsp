(defun layer:freezelist (/ each out)
    "返回冻结图层列表"
    (vlax-for each (std:layers)
        (if (= (vla-get-freeze each)
                :vlax-true)
            (setq out (cons (vla-get-name each)
                    out))))
    out)
