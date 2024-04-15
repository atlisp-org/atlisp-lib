(defun timer:begin ()
  "计时器开始"
  (if (> (@::acadver) 21.9)
      (setq *timer* (getvar "millisecs"))
      (setq *timer* (getvar "TDUSRTIMER"))))
