(defun p:phyunitp (str)
  "测试字符串是否为物理量单位SI"
  "t or nil"
  "(p:unitp \"W/m²·K\")"
  (apply 'and
	 (mapcar '(lambda(x)(member (chr x)@:*units*))
		 (string:s2l-ansi str))))
