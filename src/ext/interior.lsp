(defun ext:interior (fun / out lst-int ifun)
  "显化内部符号或函数。"
  "subr"
  "(ext:interior 'beep)"
  (cond 
   ((listp fun)
    (foreach x fun (ext:interior x)))
   ((atom fun)
    (if (= (type fun) 'sym)(setq fun (strcase (vl-symbol-name fun) t)))
    (if (= 'subr (type (eval (read fun))))
	(eval(read fun))
      (progn
	(setq out (strcat @:*prefix* ".cache" (chr 92) "interior-"
			  (filename:replace-special fun)
			  ".fas"))
	(if (findfile out)
	    (load out)
	  (progn
	    (setq lst-int
		  (append  (vl-string->list "\r\n FAS4-FILE ; Do not change it!\r\n")
			   '(49 13 49 32 36 7 36 13 )
			   (vl-string->list (itoa (+ 26 (* 2 (strlen fun)))))
			   (list 32 50 32 36 20 1 1 1 0 86)
			   (vl-string->list fun)
			   (list 0 0 91 )
			   (vl-string->list (vl-string-subst "-" "." fun))
			   (list 0 0 1 67 0 0 2 0 10 3 0 0 11 6 1 0 22 36)
			   (vl-string->list "\n;@lisp https://atlisp.cn")
			   ))
	    (file:list-to-stream out lst-int)
	    (load out))))))))
