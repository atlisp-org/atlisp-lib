(defun color:rgb2css (lst-color)
  "将 color 的三色值转换为 #FFFFFF 样式的字符串"
  "String"
  
  (strcat "#"
	  (string:from-list
	   (mapcar
	    '(lambda(x / c)
	       (setq c (substr (vl-symbol-name (m:dec2hex x)) 3))
	       (if (= 1 (strlen c))
		   (strcat "0" c)
		 c))
	    lst-color)
	   "")))
