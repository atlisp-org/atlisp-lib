(defun excel:get-selection (xlapp)
  "获取选择区域的索引\n参数:xlapp:已打开的excel文件对象"
  "A1格式的索引"
  "(excel:get-Selection exobj)"
  (excel:get-rangeindex (vlax-get-property xlapp (quote selection))))
