(defun string:subst-all (str-new str-old str / inc len)
  "用 str-new 替换 字符串str 中所有的 str-old"
  "结果字符串"
  "(string:subst-all \"qwe\" \"abc\" \"mabcpoildabce\")  => \"mqwepoildqwee\""
  (if (> (strlen str-old) 0)
      (progn
	(setq len (strlen str-new)
	      inc 0)
	(while (setq inc (vl-string-search str-old str inc))
	  (setq str (vl-string-subst str-new str-old str inc)
		inc (+ inc len)))))
  str)
