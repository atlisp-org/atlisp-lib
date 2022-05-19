(defun excel:range-mergep (xlapp index)
  "判断是否是合并单元格\n参数:xlapp:已打开的excel文件对象\n参数:index:区域索引，A1引用格式或者行列表"
  "是，返回t，否，返回nil"
  "(excel:Range-Mergep exobj \"A1\")"
  (equal (vlax-variant-value (vlax-get-property (excel:get-range xlapp (excel:utils-index-cells->range index))
        (quote mergecells)))
    :vlax-true))
