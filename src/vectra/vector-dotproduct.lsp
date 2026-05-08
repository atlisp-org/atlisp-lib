(defun vectra:vector-dotproduct (v1 v2 /)
  "计算两个向量的点积"
  "number - 返回点积结果"
  "(vectra:vector-dotproduct '(1 2) '(3 4)) => 11"
  (apply (quote +) (mapcar (quote *) v1 v2)))