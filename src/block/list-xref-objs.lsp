(defun block:list-xref-objs (/ res)
  "获取外部参照对象列表"
  "外部参照对象列表"
  ""
  (setq res nil)
  (vlax-for blk *blks* (if (= :vlax-true (vla-get-isxref blk))
      (setq res (cons blk res))))
  res)
