(defun m:decimal-to-fraction (decimal / sign)
  "将小数转换为分数，并简化到最简形式。小数位精度6位"
  "(分子, 分母) - 结果表示为分子/分母，分子和分母都是整数。"
  (if (numberp decimal)
      (progn
	(cond
	 ((zerop decimal)
	  (list 0 1))
	 ((equal (fix decimal) decimal 0.000001)
	  (list (fix decimal) 1))
	 (t
	  (setq sign (if (< decimal 0)  -1 1))
	  (setq decimal (abs decimal))
	  (setq numerator (fix (+ 0.5 (* decimal 1000000))))
	  (setq gcd1 (m:gcd numerator (fix 1000000)))
	  (list (* sign (fix (/ numerator gcd1))) (fix(+ 0.5 (/ 1000000 gcd1))))))
	)))

