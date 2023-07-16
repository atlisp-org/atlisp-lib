(defun list:union (lst1 lst2 / lst)
  "求两个集合的并集"
  "list"
  (if (null *fuzz*)
      (setq *fuzz* 0.001))
  (setq lst lst1)
  (foreach a lst2
	   (if (not (list:member a lst *fuzz*))
	       (setq lst (cons a lst))))
  lst)
  
