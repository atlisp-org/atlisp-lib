(defun vectra:vector-len (v /)
  (sqrt (apply (quote +)
      (mapcar (quote *)
        v v))))
