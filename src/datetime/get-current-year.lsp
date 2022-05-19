(defun datetime:get-current-year nil "返回年份"
  (substr (itoa (fix (getvar "CDATE")))
    1 4))
