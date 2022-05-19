(defun vectra:benchmark (expr n / elapse tps start)
  (setq start (getvar "MILLISECS"))
  (repeat n (eval expr))
  (setq elapse (- (getvar "MILLISECS")
      start))
  (if (equal elapse 0.0 1.0e-06)
    (strcat "Benchmark loops = "
      (itoa n)
      ", in "
      (rtos elapse 2 4)
      "
      ms")
    (strcat "Benchmark loops = "
      (itoa n)
      ", in "
      (rtos elapse 2 4)
      "
      ms, "
      (rtos (/ n elapse 0.001)
        2 0)
      "
      invoke / s")))
