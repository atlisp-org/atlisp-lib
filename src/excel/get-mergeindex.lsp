(defun excel:get-mergeindex (xlapp index / rtn)
  "获取合并单元格的索引\n参数:xlapp:已打开的excel文件对象\n参数:index:区域索引，A1引用格式或者行列表"
  "A1格式的索引"
  "(Excel:get-MergeIndex)"
  (if (excel:range-mergep xlapp index)
    (progn (vlax-invoke-method (excel:get-range xlapp index)
        (quote select))
      (setq rtn (excel:get-selection xlapp))))
  rtn)
