(defun vectra:round (f num /)
  (fix (- f (rem f num)
      (- num))))
