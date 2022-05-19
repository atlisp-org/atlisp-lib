(defun entity:dimradius (pt-cen pt-r)
  "生成半径标注"
  "return:标注图元名"
  "example:(entity:dimradius (getpoint)
    (getpoint))"
  (entmakex (list (quote (0 . "DIMENSION"))
      (quote (100 . "AcDbEntity"))
      (quote (100 . "AcDbDimension"))
      (cons 10 pt-cen)
      (quote (70 . 36))
      (quote (100 . "AcDbRadialDimension"))
      (cons 15 pt-r))))
