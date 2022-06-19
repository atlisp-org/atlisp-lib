(defun ini:save (lst-ini filename / *error* fp)
  "保存 lst-ini 表 到 ini 文件。"
  "T or nil"
  (defun *error* (msg)
    (if (= 'file fp)(close fp))
    (@:*error* msg)
    )
  (setq fp (open filename "w"))
  (if (= 'file (type fp))
      (progn
	(foreach
	 sub lst-ini
	 (foreach item sub
		  (cond
		   ((and (p:stringp item)(/= "" item))
		    (write-line
		     (strcat "["(vl-string-trim "[] " item)"]")
		     fp))
		   ((and (listp item)
			 (p:stringp (car item))
			 (/= "" (car item)))
		    (write-line (strcat (vl-string-trim " " (car item)) "="
					(if (p:stringp (cdr item)) (cdr item)
					  (vl-prin1-to-string (cdr item)))
					)
				fp))
		   )))
	(close fp)
	T
	)
    )
  )
