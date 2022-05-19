(defun std:timer-end nil "计时器结束函数"
    (princ "\n    用时")
    (princ (* (- (getvar "tdusrtimer")
                @:*timer-prg*)
            86400))
    (princ "秒\n")
    (setq @:*timer-prg* nil)
    (princ))
