(defun datetime:get-current-day nil "θΏεζ₯ζ"
  (substr (itoa (fix (getvar "CDATE")))
    7 2))
