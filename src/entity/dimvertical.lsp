(defun entity:dimvertical (p1 p2 txtpt)
  "创建竖向标注"
  (entmakex (list (quote (0 . "DIMENSION"))
      (quote (100 . "AcDbEntity"))
      (quote (100 . "AcDbDimension"))
      (cons 10 txtpt)
      (quote (70 . 32))
      (quote (1 . ""))
      (quote (100 . "AcDbAlignedDimension"))
      (cons 13 p1)
      (cons 14 p2)
      (quote (50 . 1.5708))
      (quote (100 . "AcDbRotatedDimension")))))
