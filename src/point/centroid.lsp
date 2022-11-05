(defun point:centroid (pts)
  "求多个点的几何形心"
  "POINT"
  (if (> (length pts) 0)
      (mapcar
       '(lambda(x)
	  (/ x (float (length pts))))
       (cons
	(apply '+ (mapcar 'car pts))
	(cons
	 (apply '+ (mapcar 'cadr pts))
	 (if (caddr (car pts))
	     (cons (apply '+ (mapcar 'caddr pts))
		   nil)))))))
   
