(defun vla:put-property (sym str value / obj-tree res)
  "点操作符方式设置对象的属性，参数:sym vla对象的符号，str 用点表示的CAD对象层级的属性名。"
  "any"
  "(vla:put-property *ACAD* \"application.preferences.drafting.autosnapmarkersize\" 5)"
  (if (null acadobj)
      (setq acadobj (vlax-get-acad-object)))
  (setq obj-tree (string:to-list str "."))
  ;;(setq res (eval (read (car obj-tree))))
  (setq res sym)
  
  (while (and (p:vlap res)  (cddr obj-tree))
    (setq porm (string:to-list (cadr obj-tree) "("))
    (cond
      ((vlax-property-available-p res (read (car porm)))
       (setq res (vlax-get-property res (read (car (setq obj-tree (cdr obj-tree)))))))
      ((vlax-method-applicable-p res (read (car porm)))
       (setq params (mapcar 'read  (string:to-list (vl-string-right-trim  ")"(cadr porm))",")))
       (setq res (apply 'vlax-invoke (cons res (cons (read (car porm)) params))))
       (setq obj-tree (cdr obj-tree))
       )))
  (vlax-put-property  res  (read (car (setq obj-tree (cdr obj-tree)))) value))
	       
