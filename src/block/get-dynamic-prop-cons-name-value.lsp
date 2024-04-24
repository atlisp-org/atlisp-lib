(defun block:get-dynamic-prop-cons-name-value (blkref / props n lst)
  "获取动态块的动态特性与值的点对列表。"
  (setq props (block:get-dynamic-properties blkref))
  (setq n 0)
  (setq lst nil)
  (repeat (length (car props))
    (setq lst (append lst (list (cons (nth n (car props))
            (nth n (cadr props))))))
    (setq n (1+ n)))
  lst)
