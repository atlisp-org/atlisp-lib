(defun vectra:xdata-keys (ename /)
  (mapcar (quote car)
    (vectra:xdata-all ename)))
