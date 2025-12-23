(defun system:which (exename / res logfile)
  "查找定位可执行文件,仅支持exe扩展的文件"
  ;; (progn
  ;; (setq logfile (@::path-os(strcat @::*tmp-path* "pslog")))
  ;; (@::cmd "shell" 
  ;;   (strcat "Get-Command "
  ;;     exename" -errorAction SilentlyContinue | Out-File -FilePath "
  ;;     logfile
  ;;     "}")))
  (cond
   ((eq $platform 'linux)
    )
   (t
    (if (or (null (vl-filename-extension exename))
	    (and (vl-filename-extension exename)
		 (/= ".exe" (strcase (vl-filename-extension exename)  t))))
	(setq exename (strcat exename ".exe")))
    ))
  (foreach path (vl-remove "" (string:to-list (getenv"path")";"))
	   (if (findfile (strcat path"/" exename ))
	       (setq res (@::path-os (strcat path"/"exename)))))
  res
  )
  
