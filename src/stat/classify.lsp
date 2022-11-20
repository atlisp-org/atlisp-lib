(defun stat:classify (lst-cons / res )
  "分类统计由一系列类别和数字组成的点对表。按类别统计求类别后数值的总和。"
  "lst"
  "(stat:classify '((a . 5)(b . 3)(a . 2)(b . 6)))"
  (setq res nil)
  (foreach cons% lst-cons
	   (if (assoc (car cons%) res)
	       (setq res
		     (subst
		      (cons (car cons%)
			    (+ (cdr (assoc (car cons%) res))
			       (cdr cons%)))
		      (assoc (car cons%) res)
		      res))
	     (setq res
		   (cons
		    cons%
		    res))))
  res)
