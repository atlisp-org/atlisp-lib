(defun pickset:erase (ss / e)
  "删除选择集图元"
  "最后一个被删除的图元"
  (while (> (sslength ss)
      0)
    (setq e (ssname ss 0))
    (setq ss (ssdel e ss))
    (entdel e)))
