(defun layer:layerofflist (/ each out)
    "返回关闭图层列表"
    (vlax-for each (std:layers)
        (if (= (vla-get-layeron each)
                :vlax-false)
            (setq out (cons (vla-get-name each)
                    out))))
    out)
