(defun stat:print ()
  "打印最后一次统计的结果"
  (princ "Item , Number\n")
  (foreach n @:tmp-stat-result
	   (princ (car n))
	   (princ " , ")
	   (princ (cdr n))
	   (princ "\n")))
