(defun ui:progress1 (ratio)
  "基于 ACET 的状态栏进度条."
  ""
  "(ui:progress1 30)"
  (if (type acet-ui-progress)
    (progn (if (null progress)
        (setq progress (acet-ui-progress "已经完成"
            100)))
      (acet-ui-progress ratio)
      (if (>= ratio 100)
        (setq progress (acet-ui-progress))))
    (princ "没有安装 ExpressTools")))
