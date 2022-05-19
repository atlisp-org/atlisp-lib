(defun excel:merge-range (xlapp index / range)
  "合并单元格\n参数:xlapp:已打开的excel文件对象\n参数:index:区域索引，A1引用格式或者行列表"
  (vlax-invoke-method (excel:get-range xlapp (excel:utils-index-cells->range index))
    (quote merge))
  (excel:get-range xlapp index))
