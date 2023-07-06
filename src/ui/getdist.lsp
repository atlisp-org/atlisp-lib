(defun ui:getdist (msg / flag sn ents ss)
  "当按下键盘数字键时，返回数值，当鼠标左键点取文字或标注时，取文字或标注的值。"
  "Number"
  "(ui:getdist \"Please input number or select text/dimension\")"
  (princ msg)
  (setq sn "")
  (setq flag t)
  (while flag
    (setq gr (grread t 16))
    "处理输入"
    (cond ((= 2 (car gr))
	   "按下了键盘按键"
	   (cond
	    ((member (cadr gr) (vl-string->list "0123456789." ))
	     "持续输入数字键"
	     (setq sn (strcat sn (chr (cadr gr))))
	     (princ (chr (cadr gr)))
	     )
	    ((member (cadr gr) '(13 32))
	     "回车 或空格，返回输入的值"
	     (princ "\n")
	     (setq flag nil)
	     )
	    ))
	  ((= 3 (car gr))
	   "按下鼠标左键，选中图元，读值"
	   (setq ents (pickset:to-list (ssget (cadr gr) '((0 . "DIM*,TEXT")))))
	   (if ents
	       (progn
		 (if (/= (entity:getdxf (car ents) 1) "")
		     (setq sn (entity:getdxf (car ents) 1))
		   (if (entity:getdxf (car ents) 42)
		       (setq sn (entity:getdxf (car ents) 42))))
		 (setq flag nil)
		 )))
	  ((= 5 (car gr))
           "移动鼠标,高亮图元"
	   (setq ss (ssget (cadr gr) '((0 . "DIM*,TEXT"))))
	   (sssetfirst nil ss)
	   )
	  ))
  (if (= 'str (type sn))
      (atof sn)
    (if (numberp sn)
	sn))
  )
