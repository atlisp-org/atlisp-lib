(defun string:l2s-ansi (lst-str / h% res)
  "byte or word 整数值列表转字符串。\n当小于128时，单字节，当两个连续的大于128时，双字节值。用于转换非英文字串时防止重码。\n当AutoCAD2021且lispsys=1时，与string:s2l-ansi 成对兼容 unicode."
  (if (<= 1 (getvar "lispsys"))
      (vl-list->string lst-str)
      (progn (setq h% 0)
	     (setq res (quote nil))
	     (foreach
	      word% lst-str
	      (cond
		((>= word% 32896)
		 (setq res (cons (/ word% 256)
				 res))
		 (setq res (cons (rem word% 256)
				 res)))
		((< word% 32896)
		 (cond
		   ((= 178 word%)
		    (setq res (append
			       (reverse (list 92 85 43 48 48 66 50))
			       res)))
		   ((= 179 word%)
		     (setq res (append
			       (reverse (list 92 85 43 48 48 66 51))
			       res)))
		   (t (setq res (cons word% res)))
		   )))
	      )
	     (vl-list->string (reverse res)))))
