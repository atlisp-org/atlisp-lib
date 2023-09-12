(defun curve:midpoint (curve)
  "求曲线中点"
  "中点坐标"
  "(curve:midpoint (car (entsel)))"
  (if (= 'vla-object (type curve))
      (setq curve  (o2e curve)))
  (if(= 'ename (type curve))
     (cond
       ((= "MLINE" (entity:getdxf curve 0))
	(setq midlen (* 0.5 (curve:length curve)))
	(setq pts (curve:get-points curve))
	(while (< (distance (car pts)(cadr pts)) midlen)
	  (setq midlen (- midlen  (distance (car pts)(cadr pts))))
	  (setq pts (cdr pts))
	  )
	(setq pts (cdr pts))
	(polar (car pts)
	       (angle (car pts)(cadr pts))
	       (- midlen (distance (car pts)(cadr pts)))))
       (t
	(setq o-curve (e2o curve))
	(vlax-curve-getpointatdist o-curve (/ (curve:length curve)
					      2))))
     '(0 0 0)
     ))
