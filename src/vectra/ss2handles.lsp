(defun vectra:ss->handles (ss / e)
  (mapcar (function (lambda (e)
        (vectra:dxf e 5)))
    (vectra:ss->enames ss)))
