(defun layer:plotable (laylist on-off)
  "设置指定图层(列表)不打印\n参数1、图层列表\n参数2、是否打印(t打印/nil不打印)"
  (if (atom laylist)
      (setq laylist (list laylist)))
  (vlax-for
   each (vla-get-layers *doc*)
   (if (member (strcase (vla-get-name each))
	       (mapcar (quote strcase)
		       laylist))
       (if (vlax-write-enabled-p each)
           (if on-off (vla-put-plottable each :vlax-true)
	       (vla-put-plottable each :vlax-false))))
   (vlax-release-object each)))
