(defun vectra:mid (p1 p2 / e)
  (mapcar (function (lambda (e)
        (/ e 2.0)))
    (mapcar (function +)
      p1 p2)))
