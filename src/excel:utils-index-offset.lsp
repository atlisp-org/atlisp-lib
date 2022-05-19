(defun excel:utils-index-offset (basecellid rowoffset columnoffset)
  "根据行列偏移量计算单元格索引\n参数:BaseCellId:基础单元格索引，可以为A1引用格式或者行列数字列表\n参数:rowOffset:行偏移量\n参数:columnOffset:列偏移量"
  "A1格式的单元格索引"
  "(excel:Utils-index-offset \"A1\"
    2 3)"
  (if (= (quote str)
      (type basecellid))
    (setq basecellid (excel:utils-index-range->cells basecellid)))
  (excel:utils-index-cells->range (mapcar (quote +)
      basecellid (list rowoffset columnoffset))))
