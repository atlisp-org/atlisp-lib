(defun m:linear-interpolation (x xmin xmax ymin ymax)
  "线性插值"
  "number"
  "(m:liner-inerpolation 3.2 3 4 5 6)"
  (+ ymin (* (- ymax ymin)(/ (float (- x xmin))(float (- xmax xmin))))))
