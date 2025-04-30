(defun py:install ()
  "安装Python运行环境"
  ""
  (or @::enable-start
	  (@::check-pgp)
	  (@::patch-pgp) 
	  )
  (setvar "cmdecho" 0)
  (@::cmd "powershell"
	  "winget install python.python.3.13")
  (setvar "cmdecho" 1)
  )
