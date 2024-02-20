(defun string:to-list (str separator / s2l)
  "字符串转成列表，拆分字符串，指定字符来分隔字符串。"
  "拆分后的列表"
  (if (and (p:stringp separator)
	   (p:stringp str))
      (if(= "" separator)
	 (mapcar (quote (lambda (x)
			  (string:l2s-ansi (list x))))
		 (string:s2l-ansi str))
	 (progn
	   (defun s2l (str separator / pos)
	     (if (setq pos (vl-string-search separator str))
		 (cons (substr str 1 pos)
		       (s2l (substr str (+ pos 1 (strlen separator)))
			    separator))
		 (list str)))
	   (s2l str separator)
	   ))
      (progn
	(@:log "ERROR" "parameter is not a string")
	nil)
      ))
