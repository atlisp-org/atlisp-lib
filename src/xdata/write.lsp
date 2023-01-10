(defun xdata:put (appid ename lst / lst1 x)    ; 写入扩展数据1
  "向图元 ename 附加扩展数据 lst"
  (dedata ename)
  (setq lst1 '())
  (foreach x lst
	   (setq lst1 (cons (get_tile x) lst1))
	   )
  (setq lst1 (reverse lst1))
  (regapp appid)
  (entmod (append
	   (entget ename)
	   (list (list -3 (list appid (cons 1000 (lst2str1 lst1)))))
	   )
	  )
  )
