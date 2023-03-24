(defun string:hannumberp (str)
  "确定字符串是否为中文数字"
  (apply 'and (mapcar '(lambda(x)
			(member x (string:s2l-ansi  "零一二三四五六七六九十百千万亿")))
		     (string:s2l-ansi str))))
