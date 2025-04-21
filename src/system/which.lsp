(defun system:which (exename / res logfile)
  "查找定位可执行文件"
  (progn
  (setq logfile (@::path-os(strcat @::*tmp-path* "pslog")))
  (@::cmd "shell" 
    (strcat "Get-Command "
      exename" -errorAction SilentlyContinue | Out-File -FilePath "
      logfile
      "}")))
  ;;(@::get-file-contents logfile)
)
  
