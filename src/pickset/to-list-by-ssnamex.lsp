(defun pickset:to-list-by-ssnamex (ss / i lst)
  "选择集转图元表，ssnamex 方法"
  "lst"
  ""
  (setq ssx (reverse (ssnamex ss)))
  (while(< (caar ssx) 0)
    (setq ssx(cdr ssx)))
  (setq lst (reverse (mapcar (quote cadr)
			     ssx))))
