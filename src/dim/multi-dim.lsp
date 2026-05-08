(defun dim:multi-dim (pt lst-offset angle1 text-offset / pt-tmp pt-tmp1)
  "多个标注，pt起始点，lst-offset，逐个偏移量列表,angle1 角度，text-offset文字偏移量"
  ""
  (setq pt-tmp pt)
  (foreach
   offset lst-offset
   (entity:dimaligned
  pt-tmp
  (setq pt-tmp1 (polar pt-tmp angle1 offset))
  (polar (point:mid pt-tmp pt-tmp1)
  (+ (* 0.5 pi) angle1)
  text-offset))
   (setq pt-tmp  pt-tmp1))
  )
