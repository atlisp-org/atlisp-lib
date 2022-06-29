(defun music-die:list-to-var (lists / pntlst2)
  (vlax-safearray-fill
   (vlax-make-safearray
    vlax-vbDouble
    (cons 0 (1- (* 3 (length LISTS))))
    )
   (foreach e LISTS
	    (setq PntLst2 (append PntLst2 e))
	    )
   )
  )
