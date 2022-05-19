(defun stat:stat (lst / atom% res)
  "统计列表 lst 中的元素个数。"
  "元素和个数组成的点对表"
  "(stat:stat '(3 a a 2 2))
  => ((3 . 1)
    (A . 2)
    (2 . 2))"
  (setq res (quote nil))
  (foreach atom% lst (if (assoc atom% res)
      (setq res (subst (cons atom% (+ 1 (cdr (assoc atom% res))))
          (assoc atom% res)
          res))
      (setq res (append res (list (cons atom% 1))))))
  res)
