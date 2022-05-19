(defun pickset:to-list-by-ssname (ss / i lst)
  "选择集转图元表，ssname 方法"
  "lst"
  ""
  (setq i -1)
  (if (p:picksetp ss)
    (repeat (sslength ss)
      (setq lst (cons (ssname ss (setq i (1+ i)))
          lst))))
  (reverse lst))
