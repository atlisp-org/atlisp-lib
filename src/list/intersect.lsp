(defun list:intersect (lst1 lst2 / res)
  "求两个列表集合的交集"
  "List"
  (foreach a lst2
	   (if (member a lst1)
	       (setq res (cons a res))))
  res)
