(defun vectra:make-line (p1 p2 /)
  (vectra:entmake (list (quote (0 . "LINE"))
      (cons 10 p1)
      (cons 11 p2))))
