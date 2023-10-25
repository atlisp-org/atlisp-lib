(defun re:replace (pattern string newstr / regex s pos len str l flags)
  "正则表达式替换字符串. pattern 为以/开头及以/+修饰符结尾的字串，\ 需写成 \\ 形式。"
  "String"
  "(re:replace \"/ab/g\" \"cabcdabcd\" \"mm\")"
  (setq lst-p (string:to-list pattern "/"))
  (setq flags (strcase (last lst-p) t))
  (setq pattern (string:from-lst (reverse (cdr(reverse (cdr lst-p))))"/"))
  (setq regex (vlax-create-object "Vbscript.RegExp"))
  (mapcar '(lambda(x)(vlax-put-property regex x 0))
	  '("Global""IgnoreCase""Multiline"))
  (foreach
   f (vl-string->list flags)
   (cond
     ((= f (ascii "g"))
      (vlax-put-property
       regex "Global" 1))
     ((= f (ascii"i"))
      (vlax-put-property
       regex "IgnoreCase" 1))
     ((= f (ascii"m"))
      (vlax-put-property
       regex "Multiline" 1))
     ))
  (vlax-put-property regex "Pattern"
		     pattern)

  (setq s (vlax-invoke-method regex (quote replace)
			      string newstr))
  (vlax-release-object regex)
  s)
