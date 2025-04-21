(defun system:which (exename / paths)
  "查找定位可执行文件"
  (setq paths (string:to-list (getenv "path")";"))
  (while (and
	  paths
	  (null
	   (or
	    (findfile (strcat (car paths) "//" exename))
	    (findfile (strcat (car paths) "//" exename".exe")))))
    (setq paths (cdr paths)))
  (if paths
      (@::path-os (strcat paths "//"exename)))
  )
