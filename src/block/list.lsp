(defun block:list (/ res name)
  "列块的名称"
  "list"
  (if (setq name (cdr (assoc 2 (tblnext "block" t))))
      (setq res (cons name nil)))
  (while (setq name (tblnext "block"))
    (setq res (cons (cdr (assoc 2 name)) res)))
  res)
