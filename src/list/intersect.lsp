(defun list:intersect (lst1 lst2 / res)
  "求两个列表集合的交集"
  "List"
  (if (null *fuzz*)
      (setq *fuzz* 0.0001))
  (foreach a lst2
	   (if (list:member a lst1 *fuzz*)
	       (setq res (cons a res))))
  res)
