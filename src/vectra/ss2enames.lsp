(defun vectra:ss->enames (ss / en handles n)
  (if ss (progn (repeat (setq n (sslength ss))
        (setq en (ssname ss (setq n (1- n)))
          handles (cons en handles)))))
  handles)
