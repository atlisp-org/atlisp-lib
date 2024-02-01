(defun crypto:md5 (str)
  "对字符串str进行md5散列"
  "str"
  (@:post (strcat(@:uri)"/crypto.php?method=md5")
	  (strcat "q=" str)))
