(defun-q m:linear-interpolation (x x1 x2 y1 y2)
  "线性插值 y=y1+(y2-y1)*(x-x1)/(x2-x1)"
  "number"
  "(m:liner-inerpolation 3.2 3 4 5 6)"
  (+ y1 (* (- y2 y1)(/ (float (- x x1))(float (- x2 x1))))))
