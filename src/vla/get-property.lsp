(defun vla:get-property (sym str / obj-tree res)
  "点操作符方式获取对象的属性，参数:sym vla对象的符号，str 用点表示的CAD对象层级的属性名。str的中首个类名需与sym对象的类一致。"
  "any"
  "(vla:get-property *ACAD* \"application.preferences.drafting.autosnapmarkersize\")"
  (if (null acadobj)
      (setq acadobj (vlax-get-acad-object)))
  (setq obj-tree (string:to-list str "."))
  ;;(setq res (eval (read (car obj-tree))))
  (setq res sym)
  ;; (setq obj-tree (cdr obj-tree))
  (while (and (p:vlap res)  (cdr obj-tree))
    (setq porm (string:to-list (cadr obj-tree) "("))
    (cond
      ((vlax-property-available-p res (read (car porm)))
       (setq res (vlax-get-property res (read (car (setq obj-tree (cdr obj-tree)))))))
      ((vlax-method-applicable-p res (read (car porm)))
       (setq params (mapcar 'read  (string:to-list (vl-string-right-trim  ")"(cadr porm))",")))
       (setq res (apply 'vlax-invoke (cons res (cons (read (car porm)) params))))
       (setq obj-tree (cdr obj-tree))
       )))
  res)
	       
