(defun list:delsame (lst fuzz)
    "删除表中相同项目，保留第一次出现的位置（支持容差）"
    (if lst
	(cons (car lst)
	      (list:delsame
	       (vl-remove-if (quote (lambda (x)
				      (list:equal (car lst)
						  x fuzz)))
			     (cdr lst))
	       fuzz))))
