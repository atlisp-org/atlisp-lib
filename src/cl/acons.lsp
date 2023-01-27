(defun cl:acons (key value alist)
  "向 alist 前添加键值对。"
  "alist"
  (cons (cons key value) alist))
