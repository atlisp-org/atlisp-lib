(defun entity:dimdiameter (pt1 pt2 pt-txt)
  "生成直径标注"
  "return:标注图元名"
  "example:(entity:dimdiameter (getpoint)
    (getpoint)(getpoint))"
  (entmakex (list (quote (0 . "DIMENSION"))
      (quote (100 . "AcDbEntity"))
      (quote (100 . "AcDbDimension"))
      (cons 10 pt1)
      (cons 11 pt-txt)
      (quote (70 . 163))
      (quote (100 . "AcDbDiametricDimension"))
      (cons 15 pt2))))
