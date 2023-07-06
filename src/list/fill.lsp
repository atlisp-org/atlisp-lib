(defun list:fill (lst n element)
  "对于元素个数小于 n 的 lst, 用element 补足"
  "list"
  "(list:fill '(a b) 4 'c) => '(a b c c)"
  (if (and (numberp n)
	   (listp lst)
	   (< (length lst) n))
      (repeat (- (fix n) (length lst))
	      (setq lst (append lst (list element)))))
  lst)
  
