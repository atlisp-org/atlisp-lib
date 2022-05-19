(defun vectra:xdata-get (ename appname /)
  (cdar (vectra:xdata-get-inner ename appname)))
