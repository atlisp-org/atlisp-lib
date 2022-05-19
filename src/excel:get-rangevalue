(defun excel:get-rangevalue (xlapp index)
  "获取单元格或区域的值\n参数:XLApp:已打开的excel文件对象\n参数:index:位置信息，如\"A1\"或者'(1 1), \"A1:B2\"或者'(1 1 2 2)"
  "值的列表"
  "(excel:get-RangeValue exobj \"A1:B2\")"
  (excel:utils-getvalue (vlax-get-property (excel:get-range xlapp index)
      (quote value2))))
