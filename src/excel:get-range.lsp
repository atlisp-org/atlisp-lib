(defun excel:get-range (xlapp index)
  "说明:根据索引获取range对象\n参数:xlapp:已打开的excel文件对象\n参数:index:区域索引，A1引用格式或者行列表"
  "range对象"
  "(excel:get-Range exobj \"A1\")"
  (vlax-get-property (vlax-get-property (vlax-get-property xlapp (quote activeworkbook))
      (quote activesheet))
    (quote range)
    (excel:utils-index-cells->range index)))
