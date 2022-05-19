(defun matrix:norm (v)
    "向量的模(长度)"
    (sqrt (apply (quote +)
            (mapcar (quote *)
                v v))))
