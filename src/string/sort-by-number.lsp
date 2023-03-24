(defun string:sort-by-number (lst-str)
  "按数字排序字符串\n在夹杂数字时，如果数字前后的字符串相同，按数字大小排序"
  "排序后的字符串表"
  "(string:sort-by-number '(\"a5\"
       \"a1\"
      \"a8\"
      \"b2\"
      \"b1\"
      \"a110\"
      \"a13\"))"
  (vl-sort lst-str
	   (quote (lambda (x y)
		    (apply (quote or)
			   (mapcar (quote (lambda (a b)
					    (cond ((and (string:intp a)
							(string:intp b))
						   (< (atoi a)
						      (atoi b)))
						  ((and (string:realp a)
							(string:realp b))
						   (< (atof a)
						      (atof b)))
						  ((and (string:hannumberp a)
							(string:hannumberp b))
						   (< (string:hannumber2number a)
						      (string:hannumber2number b)))
						  (t (< a b)))))
				   (string:auto-split x)
				   (string:auto-split y)))))))
