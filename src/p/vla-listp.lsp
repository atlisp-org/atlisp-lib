(defun p:vla-listp (lst)
  "判断是否为vla对象列表"
  (apply (quote and)
    (mapcar (quote vlap)
      lst)))
