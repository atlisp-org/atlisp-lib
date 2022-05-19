(defun layer:on (laylist bool-flag)
    "图层列表开关函数"
    (vlax-for each (std:layers)
        (if (member (vla-get-name each)
                (if (listp laylist)
                    laylist (list laylist)))
            (if (vlax-write-enabled-p each)
                (vla-put-layeron each (if bool-flag :vlax-true :vlax-false))))
        (vlax-release-object each)))
