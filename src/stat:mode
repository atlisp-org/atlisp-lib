(defun stat:mode (stat-res)
  "众数"
  (car (vl-sort stat-res (function (lambda (e1 e2)
          (> (cdr e1)
            (cdr e2)))))))
