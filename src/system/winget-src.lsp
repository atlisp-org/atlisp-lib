(defun system:winget-src (uri)
  "当uri为 nil时重置为官方源."
  ""
  "(system:winget-src  \"https://mirrors.ustc.edu.cn/winget-source\")"
  (if (not (string-equal "administrator"(getenv"username")))
      (@::prompt "本函数需要管理员权限"))
  (or @::enable-start
      (@::check-pgp)
      (@::patch-pgp) 
      )
  (cond
  ((p:stringp uri)
     (@::cmd "powershell"
	     "winget source remove winget;winget source add winget " uri))
  ((null uri)
     (@::cmd"powershell" "winget source reset winget"))
  (t
     (@::cmd "powershell"
	     "winget source remove winget;winget source add winget \"https://mirrors.ustc.edu.cn/winget-source\"")))
  )
  
