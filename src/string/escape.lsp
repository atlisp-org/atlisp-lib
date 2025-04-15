(defun string:escape (str escape-chr chars-need-to)
  "对字符串 str 中的 chars-need-to 字符进行转义，转义符为escape-chr。如果需转义的字符中含转义符，需将其放在首位。"
  "string"
  "(string:escape \"@*\" \"`\" \"@*\") => \"`@`*\""
  (foreach chr (tring:s2l-ansi chars-need-to)
	   (setq str
		 (string:subst-all
		  (strcat escape-chr
			  (string:l2s-ansi char))
		  (string:l2s-ansi char)
		  str))))
  
