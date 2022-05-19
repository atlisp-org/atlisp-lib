(defun layer:plottable (laylist bool-flag)
    "图层打印开关函数"
    (vlax-for each (std:layers)
        (if (member (vla-get-name each)
                (if (listp laylist)
                    laylist (list laylist)))
            (if (vlax-write-enabled-p each)
                (vla-put-plottable each (if bool-flag :vlax-true :vlax-false))))
        (vlax-release-object each)))
