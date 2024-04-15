(defun timer:end (time p / usetime)
  "计时器结束。time 开始时间 p 是否打印。"
  (if (not time)
      (setq time *timer*))
  (if (> (@::acadver)
	 21.9)
      (setq usetime (- (getvar "millisecs")
		       time))
      (setq usetime (* 86400000 (- (getvar "TDUSRTIMER")
				   time))))
  (if p (print (strcat "use time: "
		       (rtos usetime 2 0)
		       " micro second.")))
  usetime)
