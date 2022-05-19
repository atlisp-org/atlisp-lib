(defun layer:plottablelist (/ each out)
    "返回可打印图层列表"
    (vlax-for each (std:layers)
        (if (= (vla-get-plottable each)
                :vlax-true)
            (setq out (cons (vla-get-name each)
                    out))))
    out)
