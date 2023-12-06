(defun string:hannumber2number (str / numlst alst1 alst2 num lnum1 lnum2 fstr a)
  "中文数字转为数字类型"
  "number"
  (setq numlst '(("零" . 0)
                 ("一" . 1)("壹" . 1)
                 ("二" . 2)("贰" . 2)
                 ("三" . 3)("叁" . 3)
                 ("四" . 4)("肆" . 4)
                 ("五" . 5)("伍" . 5)
                 ("六" . 6)("陆" . 6)
                 ("七" . 7)("柒" . 7)
                 ("八" . 8)("捌" . 8)
                 ("九" . 9)("玖" . 9)
                 )
        alst1  '(("十" . 10)("拾" . 10)
                 ("百" . 100)("佰" . 100)
                 ("千" . 1000.0)("仟" . 1000.0)
                 )
        alst2  '(("万" . 10000.0)
                 ("亿" . 100000000.0)
                 )
        num    0
        lnum1  0
        lnum2  0
	)
  (foreach word (mapcar '(lambda(x)(string:l2s-ansi(list x))) (string:s2l-ansi str))
	   (cond
	    ((setq a (assoc word alst2))
             (setq num   (+ num (* (+ lnum1 lnum2) (cdr a)))
                   lnum1 0
                   lnum2 0
		   )
             )
            ((setq a (assoc word alst1))
             (if (and (zerop lnum2) (zerop num))
		 (setq num (cdr a))
               (setq lnum1 (+ lnum1 (* lnum2 (cdr a)))
                     lnum2 0
		     )
               )
             )
            ((setq a (assoc word numlst)) (setq lnum2 (cdr a)))
            (t nil)
	    )
	   )
  (+ num lnum1 lnum2)
  )
