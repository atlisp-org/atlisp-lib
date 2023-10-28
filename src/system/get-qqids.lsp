(defun system:get-qqids ()
  "获取本机登录过的QQ号"
  "list"
  (setq u (getenv  "userprofile"))
  (if (vl-file-directory-p (strcat u"\\Documents\\Tencent Files"))
      (progn
	(setq qqids
	      (vl-directory-files (strcat u"\\Documents\\Tencent Files")
				  "*" -1))
	(setq qqids (vl-remove-if-not '(lambda(x)(wcmatch x "####*"))
				      qqids))))
  qqids)
