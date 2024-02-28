(defun entity:make-point (pt)
  "根据参数坐标绘制一个点"
  "ename or nil"
  (entmakex (list (quote (0 . "POINT"))
      (quote (100 . "AcDbEntity"))
      (quote (67 . 0))
      (quote (100 . "AcDbPoint"))
      (cons 10 pt)
      (quote (210 0.0 0.0 1.0))
      (quote (50 . 0.0)))))

