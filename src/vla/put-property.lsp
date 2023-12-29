(defun vla:put-property (str value / obj-tree res)
  "点操作符方式设置对象的属性"
  "any"
  "(vla:put-property \"*ACAD*.preferences.drafting.autosnapmarkersize\" 5)"
  (setq obj-tree (string:to-list str "."))
  (setq res (eval (read (car obj-tree))))
  ;; (setq obj-tree (cdr obj-tree))
  (while (and (p:vlap res)  (cddr obj-tree))
    (setq res (vlax-get-property res (read (car (setq obj-tree (cdr obj-tree)))))))
  (vlax-put-property  res  (read (car (setq obj-tree (cdr obj-tree)))) value))
	       
