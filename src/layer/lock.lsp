(defun layer:lock (laylist bool-flag)
    "图层锁定开关函数"
    (vlax-for each (std:layers)
        (if (member (vla-get-name each)
                (if (listp laylist)
                    laylist (list laylist)))
            (if (vlax-write-enabled-p each)
                (vla-put-lock each (if bool-flag :vlax-true :vlax-false))))
        (vlax-release-object each)))
