(defun entity:make-xline (pt-base unit-vector)
  "两点构造线。pt-base 基点，unit-vector 空间单位矢量，当为一个数值时，表示为弧度。"
  ""
  ""
  (if (numberp unit-vector)
      (setq unit-vector
	    (list (cos unit-vector)
		  (sin unit-vector)
		  0)))
  (entmakex (list (quote (0 . "XLINE"))
      (quote (100 . "AcDbEntity"))
      (quote (100 . "AcDbXline"))
      (cons 10 pt-base)
      (cons 11 unit-vector))))
