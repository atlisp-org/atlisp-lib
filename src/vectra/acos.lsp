(defun vectra:acos (f)
  "计算反余弦值"
  "real - 返回反余弦值（弧度）"
  "(vectra:acos 0) => 1.570796"
  (if (equal f 0.0 1.0e-06)
  (* pi 0.5)
  (atan (/ (sqrt (- 1 (* f f))) f))))