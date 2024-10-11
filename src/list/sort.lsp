(defun list:sort (lst fun / res)
  "无损排序，vl-sort 可能会删除相同的元素，导致结果列表内的个数小于原列表。list:sort 不会删除表内元素。fun:排序依据"
  "lst"
  "(list:sort '(1 2 3 1 2) '<)"
  (setq res (cons (car lst) nil))
  (while (setq lst (cdr lst))
    (if ((eval fun) (car res)(car lst))
	(setq res (cons (car lst) res))
      (progn
	(setq tmp (cons (car res)nil))
	(while (and (> (length res) 0)((eval fun)(car lst)(car tmp)))
	  (setq tmp (cons (car (setq res (cdr res))) tmp)))
	(setq res (append (reverse (cdr tmp))
			   (list (car lst))
			   res))))
      )
  (reverse res))
