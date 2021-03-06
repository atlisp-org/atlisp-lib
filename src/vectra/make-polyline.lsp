(defun vectra:make-polyline (points closed width / e)
  (vectra:entmake (append (list (quote (0 . "LWPOLYLINE"))
        (quote (100 . "AcDbEntity"))
        (quote (100 . "AcDbPolyline"))
        (cons 90 (length points))
        (cons 70 closed)
        (cons 43 width))
      (mapcar (quote (lambda (e)
            (cons 10 e)))
        points))))
