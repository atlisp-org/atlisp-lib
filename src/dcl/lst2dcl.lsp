(defun dcl:lst2dcl (lst)
  "将 lst 格式的DCL 描述表达式转为 DCL 格式. lst 格式说明：当为点对时，表示为属性值对，当为列表时，第一个元素为 Tile 名。"
  "String"
  "(dcl:lst2dcl '(button (key . btn)(label . BTN)(width . 20)(height . 3)) ;; => :button {key=\"btn\";label=\"BTN\";width=20;height=3;}"
  (defun handle-value (sym)
    (cond
     ((p:intp sym)
      (itoa sym))
     ((numberp sym)
      (rtos sym 2 3))
     ((p:stringp sym)
      (strcat "\"" sym"\""))
     ((member sym '(true false))
      (vl-symbol-name sym))
     (t (strcat "\""(vl-symbol-name sym)"\""))
     ))
  
  (if (p:stringp lst)
      lst
    (cond
     ;; 子表达式为点对表
     ((null lst) "")
     ((p:dotpairp lst)
      (strcat (vl-symbol-name (car lst))"="(handle-value (cdr lst))";"))
     ((listp lst)
      (cond 
       ((atom (car lst))
	(strcat ":"(vl-string-trim ":" (vl-symbol-name (car lst)))
		"{"
		(dcl:lst2dcl (cdr lst))
		"}"))
       (t (string:from-lst (mapcar 'dcl:lst2dcl lst)"")))))))
   
