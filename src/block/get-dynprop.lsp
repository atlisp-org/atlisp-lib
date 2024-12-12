(defun block:get-dynprop (blkref prp)
  "取动态块的某一特性的值"
  (cdr (assoc prp (block:get-properties ren))))
