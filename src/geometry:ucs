(defun geometry:ucs (base angle1)
  (command ".ucs"
    base (polar base angle1 10000)
    (polar base (+ (* 0.25 pi)
        angle1)
      25000)))
