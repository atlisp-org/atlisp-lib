(defun crypto:md5 (str)
  "对字符串str进行md5散列，注意：对于宽字节文字，其编码为unicode，而不是utf8或ansi"
  "str"
  "(crypto:md5 \"abc\") ;;=> 900150983cd24fb0d6963f7d28e17f72"
  (@:post (strcat(@:uri)"/crypto.php?method=md5")
	  (strcat "q=" str)))
