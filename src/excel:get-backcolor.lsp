(defun excel:get-backcolor (xlapp index)
  "获取充填色\n参数:xlapp:已打开的excel文件对象\n参数:index:区域索引，A1引用格式或者行列表"
  "颜色索引字符串 0-56 号"
  "(excel:get-Backcolor exobj \"A1\")"
  (excel:utils-getvalue (vlax-get-property (vlax-get-property (excel:get-range xlapp index)
        (quote interior))
      (quote colorindex))))
