(defun excel:set-backcolor (xlapp index colorindex)
  "设置充填色\n参数:xlapp:已打开的excel文件对象\n参数:index:区域索引，A1引用格式或者行列表\n参数:colorindex:颜色索引0-56号"
  (vlax-put-property (vlax-get-property (excel:get-range xlapp index)
      (quote interior))
    (quote colorindex)
    colorindex))
