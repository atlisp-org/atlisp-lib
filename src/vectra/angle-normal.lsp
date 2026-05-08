(defun vectra:angle-normal (a)
  "规范化角度到 [0, 2π) 范围"
  "real - 返回规范化后的角度"
  "(vectra:angle-normal (* pi -0.5)) => 4.712389"
  (setq a (rem a $2pi))
  (if (< a 0) (setq a (+ a $2pi)))
  a)