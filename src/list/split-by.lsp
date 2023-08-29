(defun list:split-by (lst fun / res lst-sub)
  "按给定的条件拆分表"
  "由lst组成的lst"
  ""
  (setq res nil)
  (setq lst-sub nil)
  (foreach
   sub% lst
   (if((eval fun) sub%)
       (progn
	 (setq res (cons (reverse lst-sub) res))
	 (setq lst-sub (cons sub% nil)))
       (setq lst-sub (cons sub% lst-sub))))
  (if (car lst-sub)
      (setq res (cons (reverse lst-sub) res)))
  (reverse res)
  )
