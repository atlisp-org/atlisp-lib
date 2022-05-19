(defun vectra:xdata-get-inner (ename appname /)
  (cdr (assoc -3 (entget ename (list appname)))))
