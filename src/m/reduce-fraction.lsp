(defun m:reduce-fraction (lst / gcd1)
  "约简分数，a/b，a b 均为整数,分数为分子分母组成的表"
  "list"
  (if (and (p:intp (car lst))
  (p:intp (cadr lst)))
      (cond
       ((or (zerop (car lst))(zerop (cadr lst))) (list 0 0))
       (t (setq gcd1 (gcd (car lst)(cadr lst)))
	  (mapcar '/ lst (list gcd1 gcd1))))))

