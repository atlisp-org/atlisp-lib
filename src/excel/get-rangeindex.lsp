(defun excel:get-rangeindex (range / str col row dx dy)
  "获取range的索引\n参数:range:range对象"
  "A1格式的索引"
  "(excel:get-RangeIndex xlrange)"
  (if (equal (excel:get-property range "mergecells")
      :vlax-true)
    (setq str "MergeArea.")
    (setq str ""))
  (setq dx (excel:get-property range (strcat str "Rows.Count"))
    dy (excel:get-property range (strcat str "Columns.Count"))
    row (excel:get-property range (strcat str "Row"))
    col (excel:get-property range (strcat str "Column")))
  (excel:utils-index-cells->range (list row col (1- (+ row dx))
      (1- (+ col dy)))))
