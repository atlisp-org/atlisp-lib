(defun p:listp (lst)
  "判断是否为链表。注意'(a b . c)不是链表"
  "T or nil"
  (and (listp lst)
       (vl-list-length lst)))
