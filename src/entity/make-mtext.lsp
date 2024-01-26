(defun entity:make-mtext (str pt fontsize w h / ent-mtext)
  "创建多行文本"
  "ent"
  (setq ent-mtext
	(entmakex
	 (list '(0 . "MTEXT")
	       '(100 . "AcDbEntity")
	       '(67 . 0)
	       '(100 . "AcDbMText")
	       (cons 10 pt)
	       (cons 40 fontsize)
	       (cons 41 w)
	       '(46 . 0.0)
	       '(71 . 1)
	       '(72 . 5)
	       (cons 1 "pre  mtext")
	       (cons 7 (getvar "textstyle"))
	       '(210 0.0 0.0 1.0)
	       '(11 1.0 0.0 0.0)
	       (cons 42 w)
	       (cons 43 h)
	       '(50 . 0.0)
	       '(73 . 1)
	       '(44 . 1.0))))

  (vla-put-textstring (e2o ent-mtext) str)
  ent-mtext
  )
   
