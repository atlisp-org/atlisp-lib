(defun vectra:vector-len (v /)
  "计算向量长度"
  "real - 返回向量长度"
  "(vectra:vector-len '(3 4)) => 5.0"
  (sqrt (apply (quote +) (mapcar (quote *) v v))))