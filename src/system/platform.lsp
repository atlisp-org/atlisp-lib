(defun system:platform  ()
  "返回windows操作系统版本信息"
  "lst"
  (mapcar '(lambda(x)
	    (cons x
	     (vl-registry-read
	      "HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion" x)))
	  (list
	   "CurrentVersion"
	   "ProductName"
	   "EditionId"
	   "DisplayVersion"
	   "CurrentBuild")))
