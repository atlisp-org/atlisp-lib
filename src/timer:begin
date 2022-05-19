(defun timer:begin nil "计时器开始"
  (if (> (@:acadver)
      20.1)
    (setq *timer* (getvar "millisecs"))
    (setq *timer* (getvar "TDUSRTIMER"))))
