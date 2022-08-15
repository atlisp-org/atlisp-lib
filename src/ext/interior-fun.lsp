(defun ext:interior-fun (fun / out lst-int ifun)
  "调用内部函数。"
  "subr"
  "((ext:interior 'beep) 523 200)"
  (if (= (type fun) 'sym)(setq fun (strcase (vl-symbol-name fun) t)))
  (setq out (strcat @:*prefix* ".cache" (chr 92) (string:subst-all "-" ":" fun) ".fas"))
  (if (findfile out)
      (vl-file-delete out)  )
  (setq lst-int
	(append  (list 13 )
		 (vl-string->list " FAS4-FILE ; Do not change it!")
		 '(13 49 13 49 32 36 7 36 13 )
		 (vl-string->list (itoa (+ 26 (* 2 (strlen fun)))))
		 (list 32 50 32 36 20 1 1 1 0 86)
		 (vl-string->list fun)
		 (list 0 0 91 )
		 (vl-string->list (vl-string-subst "-" "." fun))
		 (list 0 0 1 67 0 0 2 0 10 3 0 0 11 6 1 0 22 36)))
  (file:list-to-stream out lst-int)
  (load Out))
