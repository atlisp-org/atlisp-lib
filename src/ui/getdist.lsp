(defun ui:getdist (/ flag r)
  "当按下键盘数字键时，返回数值，当鼠标左键点取文字或标注时，取文字或标注的值。"
  (setq r 100.0)
  (setq sn "")
  (setq flag t)
  (while flag
    (setq gr (grread t 16))
    "处理输入"
    (cond ((= 2 (car gr))
	   "按下了键盘按键"
	   (cond
	    ((member (cadr gr) (vl-string->list "0123456789." ))
	     "数字键"
	     (setq sn (strcat sn (chr (cadr gr))))
	     (princ (chr (cadr gr)))
	     ;; (strcat "\n输入值" sn ""))
	     )
	    ((member (cadr gr) '(13 32))
	     "回车 或空格"
	     (princ "\n")
	     (setq flag nil)
	     )
	    ))
	  ((= 3 (car gr))
	   "按下鼠标左键"
	   (setq ents (pickset:to-list (ssget (cadr gr) '((0 . "DIM*,TEXT")))))
	   (if (/= (entity:getdxf (car ents) 1) "")
	       (setq sn (entity:getdxf (car ents) 1))
	     (if (entity:getdxf (car ents) 42)
		 (setq sn (entity:getdxf (car ents) 42))))
	   (setq flag nil)
	   )
	  )
    )
  (if (= 'str (type sn))
      (atof sn)
    (if (numberp sn)
	sn))
    )
