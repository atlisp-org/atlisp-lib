(defun std:osmode-on ()
  "打开对象捕捉，不影响对象捕捉设置。"
  ""
  (setvar "osmode" (- (boole 7 (getvar  "osmode") 16384) 16384))
  )
