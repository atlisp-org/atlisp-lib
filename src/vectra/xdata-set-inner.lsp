(defun vectra:xdata-set-inner (ename xdata /)
  (entmod (list (cons -1 ename)
      (cons -3 xdata))))
