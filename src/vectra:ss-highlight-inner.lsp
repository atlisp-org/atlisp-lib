(defun vectra:ss-highlight-inner (ss status / en n)
  (if ss (progn (repeat (setq n (sslength ss))
        (setq en (ssname ss (setq n (1- n))))
        (redraw en status)))))
