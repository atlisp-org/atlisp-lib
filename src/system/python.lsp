(defun system:python (/ ps1 fp file)
  "安装python"
  ;; 检查是否有python
  (if (null (system:which "python"))
      (@::cmd  "start"
	       "winget install python.python.3.12"))
  )
