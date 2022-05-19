(defun vectra:csvread-get1 (csv key / r)
  (setq r (vectra:csvread-get csv key))
  (mapcar (function (lambda (e)
        (if (= "#"
            (vectra:string-left (car e)
              1))
          (cons (vl-string-trim "#"
              (car e))
            (atof (cdr e)))
          e)))
    r))
