(defun list:group-by (lst fun / res g)
  "对已排序的列表lst进行分组。fun为分组依据"
  "lst"
  "(list:group-by '(a a a b b c) '(lambda(x y)(= x y))) => ((a a a)(b b)(c))"
  (setq res nil)
  (setq g (cons (car lst) nil))
  (while (setq lst (cdr lst))
    (setq a% (car lst))
    (if ((eval fun) (car g) a%)
	(setq g (cons a% g))
      (progn
	(setq res (cons (reverse g) res))
	(setq g (cons a% nil)))))
  (if g (setq res (cons (reverse g) res)))
  (reverse res))
    
