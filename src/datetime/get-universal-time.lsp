(defun datetime:get-universal-time ()
  "返回世界时，格林维治时间.自1900年1月1日到现在的秒数"
  "Int"
  "(datetime:get-universal-time)"
  (if (@:internetp)
      (datetime:mktime1900
       (datetime:mktime
	(datetime:rfc1123-to-lisp
	 (vlax-invoke @:*request*
		      'getresponseheader
		      "Date"))))
    0)
  )
