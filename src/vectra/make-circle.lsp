(defun vectra:make-circle (center radius /)
  (vectra:entmake (list (quote (0 . "CIRCLE"))
      (cons 10 center)
      (cons 40 radius))))
