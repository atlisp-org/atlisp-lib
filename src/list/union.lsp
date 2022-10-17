(defun list:union (lst1 lst2 / lst)
  "求两个集合的并集"
  "list"
  (setq lst lst1)
  (foreach a lst2
	   (if (not (member a lst))
	       (setq lst (cons a lst))))
  lst)
  
