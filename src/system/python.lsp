(defun system:python (/ ps1 fp file)
  "安装python"
  ;; 检查是否有python
    (setq ps1 (list
"if (-not ( Get-Command py -errorAction SilentlyContinue)) {"
"    winget install python.python.3.13"
"}"
  ))
  (setq fp (open (setq file (@::path-os(strcat @::*tmp-path* "get-python.ps1")))"w"))
  (foreach ln ps1 (write-line ln fp))
  (close fp)
  (@::cmd  "start"
		     (strcat
		      "powershell " file))
  t)
