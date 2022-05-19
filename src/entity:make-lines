(defun entity:make-lines (pts)
  "按多个点坐标创建连续直线"
  (mapcar (quote entity:make-line)
    (list:rtrim pts 1)
    (cdr pts)))
