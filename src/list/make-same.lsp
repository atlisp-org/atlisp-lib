(defun list:make-same (element num / lst)
  "生成num个相同元素 element 的列表"
  "list"
  "(list:make-same 'a 5)"
  (repeat (fix num)
	  (setq lst (cons element lst))))
