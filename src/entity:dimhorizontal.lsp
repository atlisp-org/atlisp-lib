(defun entity:dimhorizontal (pt1 pt2 pt-txt)
  "生成水平标注"
  "return:标注图元名"
  "example:(entity:dimhorizontal (getpoint)
    (getpoint)
    (getpoint))"
  (entmakex (list (quote (0 . "DIMENSION"))
      (quote (100 . "AcDbEntity"))
      (quote (100 . "AcDbDimension"))
      (cons 10 pt-txt)
      (quote (70 . 32))
      (quote (1 . ""))
      (quote (100 . "AcDbAlignedDimension"))
      (cons 13 pt1)
      (cons 14 pt2)
      (quote (100 . "AcDbRotatedDimension")))))
