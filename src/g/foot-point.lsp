(defun g:foot-point (line pt / dis dot-product foot projection v-p v-w)
  "求点到直线的垂足的坐标，line 为两点坐标组成的列表，pt 为一点坐标"
  "坐标"
  "(g:foot-point (list (getpoint)(getpoint)) (getpoint))"
  (setq v-w (mapcar '- (cadr line) (car line))) ; 直线向量
  (setq v-p (mapcar '- pt (car line))) ; 外点到直线起点的向量
  ;; 计算点到直线的投影比例
  (setq dot-product (g:dot-product v-w v-p))
  (setq dis (apply 'distance line))
  (setq projection (/ dot-product (expt dis 2)))
  (setq foot-point
	(list (+ (caar line) (* (car v-w) projection))
	      (+ (cadar line) (* (cadr v-w) projection))
	      (+ (caddr (car line)) (* (caddr v-w) projection))))
  )
