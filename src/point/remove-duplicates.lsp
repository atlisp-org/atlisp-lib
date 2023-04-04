(defun point:remove-duplicates (pts / lst)
  "去掉点列表中的重复或距离较小的的相邻点"
  ""
  (setq lst (cons (car pts) nil))
  (foreach pt pts
	   (if (> (distance pt (car lst))
		  1e-4)
	       (setq lst (cons pt lst))))
  lst)
