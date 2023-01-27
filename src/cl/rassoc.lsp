(defun cl:rassoc (key alist / x)
  "反向查询 alist,即使用每个元素的CDR中的值作为 key"
  (setq x (assoc key (mapcar '(lambda(x)(cons (cdr x)(car x))) alist)))
  (if x
      (cons (cdr x)(car x))))
