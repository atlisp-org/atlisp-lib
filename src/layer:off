(defun layer:off (laylist)
    "关闭图层\n参数：图层名称表"
    (setq laylist (mapcar (quote strcase)
            laylist))
    (vlax-for each *lays* (if (member (strcase (vla-get-name each))
                laylist)
            (if (vlax-write-enabled-p each)
                (vla-put-layeron each :vlax-false)))
        (vlax-release-object each)))
