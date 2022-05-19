(defun datetime:get-current-month nil "返回月份"
  (substr (itoa (fix (getvar "CDATE")))
    5 2))
