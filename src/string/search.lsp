(defun string:search (pattern str / lst-pattern lst-str pos-st n)
  "搜索字符串pattern 是否为 str的子串，是返回位置（汉字占一位）。"
  "int"
  (setq lst-pattern (string:s2l-ansi pattern))
  (setq len-pattern (length lst-pattern))
  (setq lst-str (string:s2l-ansi str))
  (if (setq lst-substr (member (car lst-pattern) lst-str))
      (progn
	(setq  pos-st (- (length lst-str)(length lst-substr)))
	(setq n 1)
	(while
	    (and (cdr lst-pattern)
		 (= (car (setq lst-pattern (cdr lst-pattern)))
		    (car (setq lst-substr (cdr lst-substr)))))
	  (setq n (1+ n)))
	(if (= n len-pattern)
	    pos-st
	  ))))
