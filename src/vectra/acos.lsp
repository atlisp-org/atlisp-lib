(defun vectra:acos (f)
  (if (equal f 0.0 1.0e-06)
    (* pi 0.5)
    (atan (/ (sqrt (- 1 (* f f)))
        f))))