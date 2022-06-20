(defun list:positions (item lst / res)
  "获取元素 item 在 表 lst 中的所有位置。"
  "list"
  "(list:postions 'a '(a b a)) => (0 2)"
  (setq l (length lst))
  (while (setq lst (member item lst))
    (setq res (cons (- l (length lst)) res))
    (setq lst (cdr lst)))
  (reverse res))
