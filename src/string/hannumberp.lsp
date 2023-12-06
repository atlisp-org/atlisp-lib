(defun string:hannumberp (str)
  "确定字符串是否为中文数字"
  (apply 'and (mapcar '(lambda(x)
			(member x (string:s2l-ansi  "零一二三四五六七六九十百千万亿壹贰叁肆伍陆柒捌玖拾佰仟")))
		     (string:s2l-ansi str))))
