(defun excel:unmerge-range (xlapp index / rtn)
  "分解合并单元格\n参数:xlapp:已打开的excel文件对象\n参数:index:区域索引，A1引用格式或者行列表"
  "分解后的range对象"
  "(excel:UnmergeRange exobj \"A1\")"
  (setq index (excel:utils-index-cells->range index))
  (if (excel:range-mergep xlapp index)
    (progn (vlax-invoke-method (excel:get-range xlapp index)
        (quote unmerge))
      (setq rtn (excel:get-range xlapp index))))
  rtn)
