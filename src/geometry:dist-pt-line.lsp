(defun geometry:dist-pt-line (pt segment / an)
  "求点到线段的距离"
  "number"
  "(geometry:dist-pt-line '(0 0 0)
    '((1 0 0)(0 1 0)))"
  (setq an (angle (car segment)
      (cadr segment)))
  (if (setq inter1 (inters (car segment)
        (cadr segment)
        pt (polar pt (+ an (* 0.5 pi))
          1000)
        nil))
    (if (geometry:on-segment inter1 segment)
      (distance pt inter1)
      (min (distance pt (car segment))
        (distance pt (cadr segment))))))
