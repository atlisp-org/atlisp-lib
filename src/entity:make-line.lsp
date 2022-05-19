(defun entity:make-line (startpt endpt)
  "两点创建直线"
  (entmakex (list (quote (0 . "LINE"))
      (quote (100 . "AcDbEntity"))
      (quote (100 . "AcDbLine"))
      (cons 10 startpt)
      (cons 11 endpt))))
