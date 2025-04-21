(defun system:python ()
  "安装python"
  ;; 检查是否有python
  (if(and (null (findfile
		 (@::path-os
		  (strcat
		   (getenv"userprofile")
		   "/AppData/Local/Programs/Python/Python313/python.EXE"))))
	  (system:winget))
     (@::cmd
      "start"
      "winget install python.python.3.13")))
