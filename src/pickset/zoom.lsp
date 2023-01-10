(defun pickset:zoom (ss / box)
  "缩放选择集ss到当前视口,"
  ""
  (setq box (pickset:getbox ss 0))
  (vla-ZoomCenter 
   *ACAD*
   (apply 'vlax-3D-point (point:centroid box))
   ;; 屏占比：窗口的放大级别。小于当前值的值会增加放大率。值越大，放大率越低。
   ;; 1 为全屏。
   (*  (if (and (setq magnify (@:get-config '@:magnify))
		(> magnify 0.01))
	   magnify
	 1)
       (/ 
	(apply 
	 'max
	 (mapcar 
          '/
          (mapcar '- (cadr box) (car box))
          (getvar "SCREENSIZE")
	  ))
	0.001
	))))
