(defun curve:checkarc (en / g)
  "判断多段线是否有圆弧(凸度/=0)的子段"
  (setq g (vl-remove-if-not (quote (lambda (x)
          (= (car x)
            42)))
      (entget en)))
  (not (vl-every (quote zerop)
      (mapcar (quote cdr)
        g))))
