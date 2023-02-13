(defun list:remove-duplicate-keys (lst)
    "删除点对表中重复的key，即子表中第一个元素唯一。"
    (if lst
	(cons (car lst)
	      (list:remove-duplicate-keys
	       (vl-remove-if
		'(lambda(x) (eq (caar lst)
				(car x)))
		lst)))))

