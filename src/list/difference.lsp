(defun list:difference (lst1 lst2 / res)
  "求差集."
  "list"
  (foreach a lst1
	   (if (not (member a lst2))
	       (setq res (cons a res))))
  res)
