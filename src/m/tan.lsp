(defun m:tan (num)
  "计算正切值"
  "实数"
  (if (not (equal 0.0 (cos num)
                  1.0e-010))
      (/ (sin num)
         (cos num))))
