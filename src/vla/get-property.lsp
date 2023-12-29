(defun vla:get-property (str / obj-tree res)
  "使用通常的面向对象语言的点操作符的表示方式取对象的属性,"
  "any"
  "(vla:get-property \"*ACAD*.preferences.drafting.autosnapmarkersize\")"
  (setq obj-tree (string:to-list str "."))
  (setq res (eval (read (car obj-tree))))
  ;; (setq obj-tree (cdr obj-tree))
  (while (and (p:vlap res)  (cdr obj-tree))
    (setq res (vlax-get-property res (read (car (setq obj-tree (cdr obj-tree)))))))
  res)
	       
